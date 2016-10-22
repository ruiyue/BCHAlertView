//
//  NSArray+BCHHelperKit.m
//  BCHHelperKit
//
//  Created by yiliao on 16/7/21.
//  Copyright © 2016年 Yao. All rights reserved.
//

#import "NSArray+BCHHelperKit.h"

@implementation NSArray (BCHHelperKit)

-(id)bch_objectAtIndex:(NSUInteger)index
{
    NSUInteger count = [self count];
    if (count > 0 && index < count) {
        return [self objectAtIndex:index];
    }
    return nil;
}

@end
