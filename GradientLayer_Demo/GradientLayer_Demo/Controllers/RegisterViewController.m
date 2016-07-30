//
//  RegisterViewController.m
//  GradientLayer_Demo
//
//  Created by TOMO on 16/7/30.
//  Copyright © 2016年 TOMO. All rights reserved.
//

#import "RegisterViewController.h"
#import "CommonButton.h"
@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1];
    [self createButton];
}

- (void)createButton
{
    CGFloat width = self.view.frame.size.width;
    CGRect frame = CGRectMake(100, 300, width-200, 50);
    UIButton *button = [CommonButton commonButtonWithFrame:frame buttonTitle:@"Back" fontSize:20 buttonTitleColor:[UIColor cyanColor] normalBGColor:[UIColor grayColor] normalBGImage:nil target:self selected:NO action:@selector(back) event:UIControlEventTouchUpInside];
    
    button.layer.cornerRadius = 15;
    
    [self.view addSubview:button];
}
- (void)back
{
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
