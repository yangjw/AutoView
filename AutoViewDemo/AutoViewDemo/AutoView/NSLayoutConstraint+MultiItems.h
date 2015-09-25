//
//  NSLayoutConstraint+MultiItems.h
//  AutoLayouVFL
//
//  Created by njdby on 15/9/24.
//  Copyright (c) 2015年 njdby. All rights reserved.
//

#import <UIKit/UIKit.h>
//Here, the comma is used seperate different format, like this "|-[button1],[button2]-|"
@interface NSLayoutConstraint (MultiItems)
//one NSLayoutFormatOptions for all VisualFormat
+ (NSArray *)constraintsWithMultiVisualFormats:(NSString *)formats options:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views;

//one VisualFormat with one  NSLayoutFormatOptions
+ (NSArray *)constraintsWithMultiVisualFormatsWithMultiOptions:(NSString *)formats multiOptions:(NSArray *)multiOpts metrics:(NSDictionary *)metrics views:(NSDictionary *)views;
@end
