//
//  YZTabBar.m
//  YZTabbarViewController
//
//  Created by 蓝云 on 2017/5/24.
//  Copyright © 2017年 yangzhi. All rights reserved.
//

#import "YZTabBar.h"

@interface YZTabBar ()

@property (nonatomic ,weak) UIButton *plusButton;

@end

@implementation YZTabBar

//懒加载
- (UIButton *)plusButton
{
    if (!_plusButton) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:_centerBtnImage forState:UIControlStateNormal];
        [button sizeToFit];
        [button addTarget:self action:@selector(plusButtonAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        _plusButton = button;
    }
    return _plusButton;
}

- (void)setCenterBtnImage:(UIImage *)centerBtnImage{
    _centerBtnImage = centerBtnImage;
    
}

//添加中间btn
- (void)layoutSubviews
{
    [super layoutSubviews];
    NSInteger count = self.items.count;
    CGFloat bunW = self.frame.size.width/(count+1);
    CGFloat bunX = 0;
    NSInteger i = 0;
    if (count%2 != 0) {
        return;
    }
    for (UIView *tabBarButton in self.subviews) {
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            
            if (i == count/2) {
                i++;
            }
            bunX = i*bunW;
            tabBarButton.frame = CGRectMake(bunX, 0, bunW, self.frame.size.height);
            
            i++;
            
        }
    }
    if (self.centerBtnImage) {
        self.plusButton.center = CGPointMake(self.frame.size.width*0.5, self.frame.size.height*.4);
    }
    
}

- (void)plusButtonAction
{
    if (self.block) {
        self.block();
    }
    
}





@end
