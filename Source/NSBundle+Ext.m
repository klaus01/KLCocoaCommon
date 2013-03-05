//
//  NSBundle+Ext.m
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-2-28.
//
//

#import "NSBundle+Ext.h"

@implementation NSBundle (Ext)

+ (NSString *)appName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
}

+ (NSString *)appDisplayName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
}

+ (NSString *)appVersion
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)appBuild
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

+ (NSString *)appVersionString
{
    return [NSString stringWithFormat:@"%@.%@", [NSBundle appVersion], [NSBundle appBuild]];
}

@end
