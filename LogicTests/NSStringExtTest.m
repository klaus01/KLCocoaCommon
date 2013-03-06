//
//  NSStringExtTest.m
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-3-6.
//
//

#import "NSStringExtTest.h"
#import "NSString+Ext.h"

@implementation NSStringExtTest

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testUUID
{
    NSString *ret = [NSString UUID];
    int right = 36;
    STAssertFalse(ret.length != right, @"UUID返回了%@，正确的应返回%d位字符串", ret, right);
}

- (void)testUUID32
{
    NSString *ret = [NSString UUID32];
    int right = 32;
    STAssertFalse(ret.length != right, @"UUID32返回了%@，正确的应返回%d位字符串", ret, right);
}

- (void)testMD5
{
    NSString *ret = [@"0123456789" md5];
    NSString *right = @"781E5E245D69B566979B86E28D23F2C7";
    STAssertFalse(![right isEqualToString:ret], @"md5返回了%@，正确的应返回%@", ret, right);
}

- (void)testTrim
{
    NSString *ret = [@"\t\n 0123456789\t \n" trim];
    NSString *right = @"0123456789";
    STAssertFalse(![right isEqualToString:ret], @"trim返回了%@，正确的应返回%@", ret, right);
}

- (void)testFirstPin
{
    NSString *ret = [@"柯磊" firstPin];
    NSString *right = @"KL";
    STAssertFalse(![right isEqualToString:ret], @"firstPin返回了%@，正确的应返回%@", ret, right);
}

- (void)testAllPin
{
    NSString *ret = [@"柯磊" allPin];
    NSString *right = @"kelei";
    STAssertFalse(![right isEqualToString:ret], @"allPin返回了%@，正确的应返回%@", ret, right);
}

@end
