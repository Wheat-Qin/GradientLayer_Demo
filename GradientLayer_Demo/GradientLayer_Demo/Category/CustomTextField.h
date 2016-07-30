//
//  CustomTextField.h
//  App_Tracker
//
//  Created by TOMO on 16/7/27.
//  Copyright © 2016年 TOMO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTextField : UITextField

- (instancetype)initWithFrame:(CGRect)frame
                  textContent:(NSString *)text
                    textColor:(UIColor *)textColor
                      BGColor:(UIColor *)bgColor
                  placeholder:(NSString *)placeholder
                     fontSize:(CGFloat)fontSize
              secureTextEntry:(BOOL)isSecure
                    bordStyle:(UITextBorderStyle)bordStyle
             clearButtonModel:(UITextFieldViewMode)clearButtonModel
                returnKeyType:(UIReturnKeyType)returnKeyType
                 cornerRadius:(CGFloat)cornerRadius;


+ (UITextField *)commonTextFieldWithFrame:(CGRect)frame
                              textContent:(NSString *)text
                                textColor:(UIColor *)textColor
                                  BGColor:(UIColor *)bgColor
                              placeholder:(NSString *)placeholder
                                 fontSize:(CGFloat)fontSize
                          secureTextEntry:(BOOL)isSecure
                                bordStyle:(UITextBorderStyle)bordStyle
                         clearButtonModel:(UITextFieldViewMode)clearButtonModel
                            returnKeyType:(UIReturnKeyType)returnKeyType
                             cornerRadius:(CGFloat)cornerRadius;

@end
