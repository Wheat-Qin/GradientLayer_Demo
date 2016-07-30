//
//  CustomTextField.m
//  App_Tracker
//
//  Created by TOMO on 16/7/27.
//  Copyright © 2016年 TOMO. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField
{
    NSString  *_textContent, *_placehilder;
    CGFloat _fontSize, _cornerRaius;
    BOOL _isSecure;
    UIColor *_textColor , *_bgColor;
    UITextBorderStyle _bordStyle;
    UITextFieldViewMode _clearButtonModel;
    UIReturnKeyType _returnKeyType;
}
- (instancetype)initWithFrame:(CGRect)frame textContent:(NSString *)text textColor:(UIColor *)textColor BGColor:(UIColor *)bgColor placeholder:(NSString *)placeholder fontSize:(CGFloat)fontSize secureTextEntry:(BOOL)isSecure bordStyle:(UITextBorderStyle)bordStyle clearButtonModel:(UITextFieldViewMode)clearButtonModel returnKeyType:(UIReturnKeyType)returnKeyType cornerRadius:(CGFloat)cornerRadius
{
    self = [super initWithFrame:frame];
    if (self) {
        _textContent        =   text;
        _textColor          =   textColor;
        _bgColor            =   bgColor;
        _placehilder        =   placeholder;
        _fontSize           =   fontSize;
        _cornerRaius        =   cornerRadius;
        _isSecure           =   isSecure;
        _bordStyle          =   bordStyle;
        _clearButtonModel   =   clearButtonModel;
        _returnKeyType      =   returnKeyType;
        [self updaTetextFiled];
    }
    return self;
}


- (void)updaTetextFiled
{
    self.text               =   _textContent;
    [self setTextColor:_textColor];
    [self setBackgroundColor:_bgColor];
    self.placeholder        =   _placehilder;
    self.font               =   [UIFont systemFontOfSize:_fontSize];
    self.layer.cornerRadius =   _cornerRaius;
    self.secureTextEntry    =   _isSecure;
    self.borderStyle        =   _bordStyle;
    self.clearButtonMode    =   _clearButtonModel;
    self.returnKeyType      =   _returnKeyType;
}

+ (UITextField *)commonTextFieldWithFrame:(CGRect)frame textContent:(NSString *)text textColor:(UIColor *)textColor BGColor:(UIColor *)bgColor placeholder:(NSString *)placeholder fontSize:(CGFloat)fontSize secureTextEntry:(BOOL)isSecure bordStyle:(UITextBorderStyle)bordStyle clearButtonModel:(UITextFieldViewMode)clearButtonModel returnKeyType:(UIReturnKeyType)returnKeyType cornerRadius:(CGFloat)cornerRadius
{
    return [[CustomTextField alloc]initWithFrame:frame textContent:text textColor:textColor BGColor:bgColor placeholder:placeholder fontSize:fontSize secureTextEntry:isSecure bordStyle:bordStyle clearButtonModel:clearButtonModel returnKeyType:returnKeyType cornerRadius:cornerRadius];
}

@end
