//
//  NSArrayExtTest.m
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-2-27.
//
//

#import "NSArrayExtTest.h"
#import "NSArray+Ext.h"

@interface NSArrayExtTest()
{
    NSNumber *_number1;
    NSNumber *_number2;
    NSNumber *_number3;
    NSArray *_array;
}
@end

@implementation NSArrayExtTest

- (void)setUp
{
    [super setUp];
    
    _number1 = [[NSNumber alloc] initWithInt:1];
    _number2 = [[NSNumber alloc] initWithInt:2];
    _number3 = [[NSNumber alloc] initWithInt:3];
    _array = [[NSArray alloc] initWithObjects:_number1, _number2, _number3, nil];
}

- (void)tearDown
{
    [_number1 release];
    [_number2 release];
    [_number3 release];
    [_array release];
    
    [super tearDown];
}

#pragma mark - firstObject

- (void)testFirstObject
{
    id ret = [_array firstObject];
    STAssertFalse(ret != _number1, @"firstObject返回了%@，正确的应返回%@", ret, _number1);
}

- (void)testFirstObjectReturnNil
{
    NSArray *array = [[NSArray alloc] init];
    id ret = [array firstObject];
    STAssertFalse(ret != nil, @"firstObject返回了%@，正确的应返回%@", ret, nil);
    [array release];
}

#pragma mark - prevObjectWithItem

- (void)testPrevObjectWithItem
{
    id ret = [_array prevObjectWithItem:_number2];
    STAssertFalse(ret != _number1, @"prevObjectWithItem返回了%@，正确的应返回%@", ret, _number1);
}

- (void)testPrevObjectWithItemReturnNil
{
    id ret = [_array prevObjectWithItem:_number1];
    STAssertFalse(ret != nil, @"prevObjectWithItem返回了%@，正确的应返回%@", ret, nil);
}

#pragma mark - nextObjectWithItem

- (void)testNextObjectWithItem
{
    id ret = [_array nextObjectWithItem:_number2];
    STAssertFalse(ret != _number3, @"nextObjectWithItem返回了%@，正确的应返回%@", ret, _number3);
}

- (void)testNextObjectWithItemReturnNil
{
    id ret = [_array nextObjectWithItem:_number3];
    STAssertFalse(ret != nil, @"nextObjectWithItem返回了%@，正确的应返回%@", ret, nil);
}

@end
