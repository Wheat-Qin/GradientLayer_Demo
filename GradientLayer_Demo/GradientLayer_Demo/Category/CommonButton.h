//
//  CommonButton.h
//  App_Tracker
//
//  Created by TOMO on 16/7/27.
//  Copyright © 2016年 TOMO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommonButton : UIButton

@property(strong,nonatomic)NSString *normalTitle, *selectTitle, *normalImage, *selectImage;
@property(strong,nonatomic)UIColor *normalBGColor, *titleColor,*selectBGColor, *normalBorderColor, *selectBorderColor;
@property(assign,nonatomic)BOOL isSelect;

@property(assign,nonatomic)CGFloat fontSize;


-(instancetype)initWithFrame:(CGRect)frame
                 normalTitle:(NSString *)normalTitle
                    fontSize:(CGFloat)fontSize
            buttonTitleColor:(UIColor *)titleColor
                 selectTitle:(NSString *)selectTitle
                 normalImage:(NSString *)normalImageStr
                 selectImage:(NSString *)selectImageStr
               normalBGColor:(UIColor *)normalBGColor
               selectBGColor:(UIColor *)selectBGColor
           normalBorderColor:(UIColor *)normalBorderColor
           selectBorderColor:(UIColor *)selectBorderColor
                      target:(id)target
                    selected:(BOOL)selected
                      action:(SEL)selector
                        vent:(UIControlEvents)buttonEvent;

+(UIButton *)commonButtonWithFrame:(CGRect)frame
                       normalTitle:(NSString *)normalTitle
                          fontSize:(CGFloat)fontSize
                  buttonTitleColor:(UIColor *)titleColor
                       selectTitle:(NSString *)selectTitle
                       normalImage:(NSString *)normalImageStr
                       selectImage:(NSString *)selectImageStr
                     normalBGColor:(UIColor *)normalBGColor
                     selectBGColor:(UIColor *)selectBGColor
                 normalBorderColor:(UIColor *)normalBorderColor
                 selectBorderColor:(UIColor *)selectBorderColor
                            target:(id)target
                          selected:(BOOL)selected
                            action:(SEL)selector
                              vent:(UIControlEvents)buttonEvent;


+(UIButton *)commonButtonWithFrame:(CGRect)frame
                       buttonTitle:(NSString *)buttonTitle
                          fontSize:(CGFloat)fontSize
                  buttonTitleColor:(UIColor *)titleColor
                       normalBGColor:(UIColor *)normalBGColor
                     normalBGImage:(NSString *)normalBGImage
                            target:(id)target
                          selected:(BOOL)selected
                            action:(SEL)selector
                             event:(UIControlEvents)buttonEvent;

@end




























