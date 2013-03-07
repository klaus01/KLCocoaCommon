//
//  UIImage+Ext.h
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-2-28.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (Ext)

/// 返回倒影图片
/**
 height: 倒影图片高度
 */
- (UIImage *)reflectedImageWithHeight:(NSUInteger)height;

@end
