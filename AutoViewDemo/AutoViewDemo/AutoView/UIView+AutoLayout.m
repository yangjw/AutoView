//
//  UIView+AutoLayout.m
//  AutoLayouVFL
//
//  Created by njdby on 15/9/24.
//  Copyright (c) 2015年 njdby. All rights reserved.
//

#import "UIView+AutoLayout.h"

@implementation UIView (AutoLayout)

+ (instancetype)autoLayoutView
{
    UIView *view = [self new];
    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    return view;
}

+ (void)updateLayoutForView:(UIView *)view
{
    [view setNeedsLayout];
    [view layoutIfNeeded];
}
@end
