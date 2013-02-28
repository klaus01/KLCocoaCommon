//
//  NSArray+Ext.m
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-2-27.
//
//

#import "NSArray+Ext.h"

@implementation NSArray (Ext)

- (id)firstObject
{
    if (self && (self.count > 0))
        return [self objectAtIndex:0];
    return nil;
}

- (id)prevObjectWithItem:(id)item
{
    if (self && (self.count > 0))
    {
        NSInteger index = [self indexOfObject:item];
        if (index > 0)
            return [self objectAtIndex:index - 1];
    }
    return nil;
}

- (id)nextObjectWithItem:(id)item
{
    if (self && (self.count > 0))
    {
        NSInteger index = [self indexOfObject:item];
        if (index < self.count - 1)
            return [self objectAtIndex:index + 1];
    }
    return nil;
}

@end
