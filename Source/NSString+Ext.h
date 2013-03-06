//
//  NSString+Ext.h
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-2-28.
//
//

#import <Foundation/Foundation.h>

@interface NSString (Ext)

/// 生成UUID
/**
 *  UUID Formate like this:68753A44-4D6F-1226-9C60-0050E4C00067
 */
+ (NSString *)UUID;

/// 生成UUID
/**
 *  UUID Formate like this:68753A444D6F12269C600050E4C00067
 */
+ (NSString *)UUID32;


/// 返回当前字符串的MD5码(大写)
- (NSString *)md5;

/// 返回截取前后空白后的字符串
/**
 *  包括\n\t字符
 */
- (NSString *)trim;

/// 返回各汉字的拼音首字母
/**
 *  首字母采用大写输出；若包含非汉字以原有字符输出
 */
- (NSString *)firstPin;

/// 返回各汉字的全拼
/**
 *  汉字拼音采用小写输出；若包含非汉字以原有字符输出
 */
- (NSString *)allPin;

@end
