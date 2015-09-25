//
//  NSLayoutConstraint+MultiItems.m
//  AutoLayouVFL
//
//  Created by njdby on 15/9/24.
//  Copyright (c) 2015年 njdby. All rights reserved.
//

#import "NSLayoutConstraint+MultiItems.h"

@implementation NSLayoutConstraint (MultiItems)
+ (NSArray *)allFormats:(NSString *)formats
{
    NSArray *arrayOfFormats = [formats componentsSeparatedByString:@","];
    if ([arrayOfFormats count] == 0) {
        return nil;
    }
    return arrayOfFormats;
}

+ (NSArray *)constraintsWithMultiVisualFormats:(NSString *)formats options:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views
{
    NSArray *arrayOfFormats = [NSLayoutConstraint allFormats:formats];
    if (arrayOfFormats == nil) {
        return nil;
    }
    
    NSMutableArray *constraints = [[NSMutableArray alloc] init];
    for (NSString *format in arrayOfFormats) {
        if ([format length] > 0) {
            @autoreleasepool {
                NSArray *constraint = [NSLayoutConstraint constraintsWithVisualFormat:format options:opts metrics:metrics views:views];
                [constraints addObjectsFromArray:constraint];
            }
        }
    }
    
    return constraints;
}

+ (NSArray *)constraintsWithMultiVisualFormatsWithMultiOptions:(NSString *)formats multiOptions:(NSArray *)multiOpts metrics:(NSDictionary *)metrics views:(NSDictionary *)views
{
    NSArray *arrayOfFormats = [NSLayoutConstraint allFormats:formats];
    if (arrayOfFormats == nil) {
        return nil;
    }
    
    if ([arrayOfFormats count] != [multiOpts count]) {
        return nil;
    }
    
    
    NSMutableArray *constraints = [[NSMutableArray alloc] init];
    for (NSString *format in arrayOfFormats) {
        if ([format length] > 0) {
            @autoreleasepool {
                NSArray *constraint = [NSLayoutConstraint constraintsWithVisualFormat:format options:[[multiOpts objectAtIndex:[arrayOfFormats indexOfObject:format]] unsignedIntValue] metrics:metrics views:views];
                [constraints addObjectsFromArray:constraint];
            }
        }
    }
    
    return constraints;
    
}

@end
