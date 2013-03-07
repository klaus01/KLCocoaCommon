//
//  UIColor+Ext.h
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-2-28.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (Ext)

/// 根据RBG值返回颜色
+ (UIColor *)colorWithR:(unsigned short)r G:(unsigned short)g B:(unsigned short)b;
+ (UIColor *)colorWithR:(unsigned short)r G:(unsigned short)g B:(unsigned short)b alpha:(CGFloat)alpha;

/// R,G,B都使用相同的rgb值返回颜色
+ (UIColor *)colorWithRGB:(unsigned short)rgb;
+ (UIColor *)colorWithRGB:(unsigned short)rgb alpha:(CGFloat)alpha;

/// 16进制字符串转颜色（支持：#RGB,#ARGB,#RRGGBB,#AARRGGBB，可不带#号）
+ (UIColor *)colorWithHexString:(NSString *)hexString;

@end
