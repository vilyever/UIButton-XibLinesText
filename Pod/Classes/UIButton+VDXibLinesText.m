//
//  UIButton+VDXibLinesText.m
//  UIButton-XibLinesText
//
//  Created by vilyever on 15/8/12.
//  Copyright (c) 2015年 vilyever. All rights reserved.
//

#import "UIButton+VDXibLinesText.h"

#import <objc/runtime.h>


@implementation UIButton (VDXibLinesText)

- (id)vd_initWithCoder:(NSCoder *)aDecoder {
    [self vd_initWithCoder:aDecoder];
    
    self.titleLabel.numberOfLines = 0;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self formatLineBreakTextForState:UIControlStateNormal];
    
    return self;
}


#pragma mark Accessors
#pragma mark Private Accessors

#pragma mark Public Accessors
- (UIControlState)vd_xibLinesTextState {
    return [objc_getAssociatedObject(self, @selector(vd_xibLinesTextState)) unsignedIntegerValue];
}

- (void)setVd_xibLinesTextState:(UIControlState)vd_xibLinesTextState {
    objc_setAssociatedObject(self, @selector(vd_xibLinesTextState), @(vd_xibLinesTextState), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    if (vd_xibLinesTextState & UIControlStateHighlighted) {
        [self formatLineBreakTextForState:UIControlStateHighlighted];
    }
    if (vd_xibLinesTextState & UIControlStateDisabled) {
        [self formatLineBreakTextForState:UIControlStateDisabled];
    }
    if (vd_xibLinesTextState & UIControlStateSelected) {
        [self formatLineBreakTextForState:UIControlStateSelected];
    }
}

#pragma mark Methods
#pragma mark Private Class Method

#pragma mark Private Instance Method
- (void)formatLineBreakTextForState:(UIControlState)state {
    NSString *title = [[self titleForState:state] stringByReplacingOccurrencesOfString:@"\\r\\n" withString:@"\n"];
    title = [title stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];
    [self setTitle:title forState:state];
}

#pragma mark Public Class Method

#pragma mark Public Instance Method

#pragma mark load
+ (void)load {
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(initWithCoder:) ), class_getInstanceMethod(self, @selector(vd_initWithCoder:)));
}

@end
