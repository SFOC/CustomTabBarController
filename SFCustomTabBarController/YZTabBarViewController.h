//
//  YZTabBarViewController.h
//  YZTabbarViewController
//
//  Created by 蓝云 on 2017/5/24.
//  Copyright © 2017年 yangzhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YZTabBarViewController : UITabBarController
/*!
 点击中间按钮的方法
 */
@property (nonatomic, copy) void (^didSelectedCenterBtnAction)();

/*!
 添加子控制器
 */
- (void)addChildViewController:(UIViewController *)vc title:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage;

/*!
 添加中间Btn
 */
- (void)addCenterBtnImage:(UIImage *)btnImage;



@end
