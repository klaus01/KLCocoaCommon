//
//  NSArray+Ext.h
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-2-27.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (Ext)

- (id)firstObject;
- (id)prevObjectWithItem:(id)item;
- (id)nextObjectWithItem:(id)item;

@end
