//
//  NSBundle+Ext.h
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-2-28.
//
//

#import <Foundation/Foundation.h>

@interface NSBundle (Ext)

+ (NSString *)appName;
+ (NSString *)appDisplayName;
+ (NSString *)appVersion;
+ (NSString *)appBuild;
+ (NSString *)appVersionString;

@end
