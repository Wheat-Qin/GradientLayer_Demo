//
//  LoginViewController.m
//  GradientLayer_Demo
//
//  Created by TOMO on 16/7/30.
//  Copyright © 2016年 TOMO. All rights reserved.
//

#import "LoginViewController.h"
#import "CommonLabel.h"
#import "CommonButton.h"
#import "CustomTextField.h"

#import "HomeViewController.h"
#import "RegisterViewController.h"
@interface LoginViewController ()

@property(strong,nonatomic)CAGradientLayer *layer;

@property(strong,nonatomic)UIView *baseView;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createGradientLayer];
    [self createUI];

}

- (void)createGradientLayer
{
    //create gradientLayer
    CAGradientLayer *layer = [CAGradientLayer layer];
    layer.frame = [[UIScreen mainScreen]bounds];
    
    //set start coordinate(point) of gradient
    layer.startPoint = CGPointMake(0.0, 0.4);
    
    //set end coordinate(point) of gradient
    layer.endPoint = CGPointMake(0.0, 1.0);
    
    //add gradient layer to view
    self.layer = layer;
    [self.view.layer insertSublayer:self.layer atIndex:0];
    
    UIColor *color1 = [UIColor colorWithRed:0.427451 green:0.737255 blue:0.643137 alpha:1];
    UIColor *color2 = [UIColor colorWithRed:0.572549 green:0.345098 blue:0.74902 alpha:1];
    
    //set color array of gradient layer
    self.layer.colors = @[(id)[color1 CGColor],(id)[color2 CGColor]];
}

- (void)createUI
{
    CGFloat screenWidth   = [[UIScreen mainScreen]bounds].size.width;
    CGFloat screenHeight  = [[UIScreen mainScreen]bounds].size.height;
    
    
    UIView *baseView = [[UIView alloc]initWithFrame:CGRectMake(0, screenHeight / 10, screenWidth, screenHeight / 2 + screenHeight / 6)];
    
    baseView.backgroundColor = [UIColor clearColor];
    [baseView setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:baseView];
    
    CGFloat baseViewWidth   = baseView.frame.size.width;
    CGFloat baseViewHeight  = baseView.frame.size.height;
    
    //label
    CGRect labelFrame   = CGRectMake(baseViewWidth / 10, baseViewHeight / 6, baseViewWidth / 6 * 5, baseViewHeight / 3);
    UILabel *label      = [CommonLabel commonlabelWithFrame:labelFrame labelText:@"tennis" textColor:[UIColor purpleColor] labelBGColor:[UIColor clearColor] fontSize:20 textAlignment:NSTextAlignmentCenter adjustsFontSize:YES];
    
    label.font          = [UIFont fontWithName:@"Zapfino" size:90];
    [baseView addSubview:label];
    //textField
    NSArray *titleArray = @[@"please input your name",
                            @"please input your password"];
    for (NSInteger i = 0; i < 2; i++) {
        CGRect textFieldFrame = CGRectMake(baseViewWidth / 6, baseViewHeight / 2 + baseViewHeight / 5 * i, baseViewWidth / 3 * 2, 50);
        UITextField *textField = [CustomTextField commonTextFieldWithFrame:textFieldFrame textContent:nil textColor:[UIColor purpleColor] BGColor:nil placeholder:titleArray[i] fontSize:20 secureTextEntry:NO bordStyle:UITextBorderStyleRoundedRect clearButtonModel:UITextFieldViewModeWhileEditing returnKeyType:UIReturnKeyDone cornerRadius:0.5];
        textField.alpha = 0.5;
        
        [baseView addSubview:textField];
    }
 
    //button
    
    NSArray *btnTitles = @[@"Register",
                           @"Login"];
    for (NSInteger i = 0; i < 2; i++) {
        CGRect btnFrame = CGRectMake(baseViewWidth / 5 + baseViewWidth / 3 * i, baseViewHeight - 70, baseViewWidth / 4, 50);
        UIButton *button = [CommonButton commonButtonWithFrame:btnFrame buttonTitle:btnTitles[i] fontSize:25 buttonTitleColor:[UIColor purpleColor] normalBGColor:[UIColor clearColor] normalBGImage:nil target:self selected:NO action:@selector(buttonClicked:) event:UIControlEventTouchUpInside];
        
        button.layer.cornerRadius = 15;
        button.tag = 100 + i;
        
        [baseView addSubview:button];
    }
    
    
}

- (void)buttonClicked:(UIButton *)sender
{
    switch (sender.tag) {
        case 100:
        {
            RegisterViewController *registerVC  = [[RegisterViewController alloc]init];
            registerVC.modalTransitionStyle     = UIModalTransitionStylePartialCurl;
            [self presentViewController:registerVC animated:YES completion:nil];
            NSLog(@"func:%s,line:%d,Jump to the register screen",__func__,__LINE__);
        }
            break;
        case 101:
        {
            HomeViewController *homeVC  = [[HomeViewController alloc]init];
            homeVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
            [self presentViewController:homeVC animated:YES completion:nil];
            
            NSLog(@"func:%s,line:%d,Jump to the home screen",__func__,__LINE__);
        }
            break;
    }
}
@end


























