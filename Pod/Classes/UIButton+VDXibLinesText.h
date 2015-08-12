//
//  UIButton+VDXibLinesText.h
//  UIButton-XibLinesText
//
//  Created by vilyever on 15/8/12.
//  Copyright (c) 2015年 vilyever. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIButton (VDXibLinesText)

/**
 *  By default:
 *  自动转换UIControlStateNormal的\n和\r\n为换行
 *
 *  Known Issue:
 *  无法识别其它State是否设置了title.
 *  若其它State设置了和UIControlStateNormal相同的title.
 *  无法确定是否要为该State重新设值.
 *
 *  Expect value:
 *  UIControlStateHighlighted | UIControlStateSelected
 */
@property (nonatomic, assign) UIControlState vd_xibLinesTextState;

#pragma mark Methods
#pragma mark Public Class Method

#pragma mark Public Instance Method

@end
