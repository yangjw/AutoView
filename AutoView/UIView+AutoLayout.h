//
//  UIView+AutoLayout.h
//  AutoLayouVFL
//
//  Created by njdby on 15/9/24.
//  Copyright (c) 2015年 njdby. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AutoLayout)
+ (instancetype)autoLayoutView;
+ (void)updateLayoutForView:(UIView *)view;
@end
