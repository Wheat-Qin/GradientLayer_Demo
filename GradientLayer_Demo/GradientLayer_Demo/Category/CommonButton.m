//
//  CommonButton.m
//  App_Tracker
//
//  Created by TOMO on 16/7/27.
//  Copyright © 2016年 TOMO. All rights reserved.
//

#import "CommonButton.h"


@implementation CommonButton

-(instancetype)initWithFrame:(CGRect)frame normalTitle:(NSString *)normalTitle fontSize:(CGFloat)fontSize buttonTitleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle normalImage:(NSString *)normalImageStr selectImage:(NSString *)selectImageStr normalBGColor:(UIColor *)normalBGColor selectBGColor:(UIColor *)selectBGColor normalBorderColor:(UIColor *)normalBorderColor selectBorderColor:(UIColor *)selectBorderColor target:(id)target selected:(BOOL)selected action:(SEL)selector vent:(UIControlEvents)buttonEvent
{
    self = [super initWithFrame:frame];
    if (self) {
        _normalTitle = normalTitle;
        _titleColor  = titleColor;
        _selectTitle = selectTitle ? selectTitle : normalTitle;
        
        _normalImage = normalImageStr;
        _selectImage = selectImageStr ? selectImageStr : normalImageStr;
        
        _normalBGColor = normalBGColor;
        _selectBGColor = selectBGColor ? selectBGColor : normalBGColor;
        
        _isSelect = selected;
        
        _fontSize = fontSize;
        [self addTarget:target action:selector forControlEvents:buttonEvent];
        
        [self updateButtonContentAction:selector];
    }
    return self;
}

- (void)updateButtonContentAction:(SEL)selector
{
    if (_isSelect) {
        [self setTitle:_normalTitle forState:UIControlStateNormal];
        [self setBackgroundColor:_normalBGColor];
        [self setBackgroundImage:[UIImage imageNamed:_selectImage] forState:UIControlStateNormal];
    } else {
        [self setTitle:_selectTitle forState:UIControlStateNormal];
        [self setBackgroundColor:_selectBGColor];
        [self setBackgroundImage:[UIImage imageNamed:_selectImage] forState:UIControlStateNormal];
    }
    self.titleLabel.font = [UIFont systemFontOfSize:_fontSize];
     [self setTitleColor:_titleColor forState:UIControlStateNormal];
}
+(UIButton *)commonButtonWithFrame:(CGRect)frame buttonTitle:(NSString *)buttonTitle fontSize:(CGFloat)fontSize buttonTitleColor:(UIColor *)titleColor normalBGColor:(UIColor *)normalBGColor normalBGImage:(NSString *)normalBGImage target:(id)target selected:(BOOL)selected action:(SEL)selector event:(UIControlEvents)buttonEvent
{
   
    return [[CommonButton alloc]initWithFrame:frame normalTitle:buttonTitle fontSize:fontSize buttonTitleColor:titleColor selectTitle:nil normalImage:normalBGImage selectImage:nil normalBGColor:normalBGColor selectBGColor:nil normalBorderColor:nil selectBorderColor:nil target:target selected:selected action:selector vent:buttonEvent];
}

+(UIButton *)commonButtonWithFrame:(CGRect)frame normalTitle:(NSString *)normalTitle fontSize:(CGFloat)fontSize buttonTitleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle normalImage:(NSString *)normalImageStr selectImage:(NSString *)selectImageStr normalBGColor:(UIColor *)normalBGColor selectBGColor:(UIColor *)selectBGColor normalBorderColor:(UIColor *)normalBorderColor selectBorderColor:(UIColor *)selectBorderColor target:(id)target selected:(BOOL)selected action:(SEL)selector vent:(UIControlEvents)buttonEvent
{
  return [[CommonButton alloc]initWithFrame:frame normalTitle:normalTitle fontSize:fontSize buttonTitleColor:titleColor selectTitle:selectTitle normalImage:normalImageStr selectImage:selectImageStr normalBGColor:normalBGColor selectBGColor:selectBGColor normalBorderColor:normalBorderColor selectBorderColor:selectBorderColor target:target selected:selected action:selector vent:buttonEvent];
}

@end













