//
//  YZTabBar.h
//  YZTabbarViewController
//
//  Created by 蓝云 on 2017/5/24.
//  Copyright © 2017年 yangzhi. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^YZTabBarBlock)();

@interface YZTabBar : UITabBar

/*!
 中间btn的图片
 */
@property (nonatomic, strong) UIImage *centerBtnImage;
@property (nonatomic, copy) YZTabBarBlock block;


@end
