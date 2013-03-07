//
//  UITableView+Ext.h
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-2-28.
//
//

#import <UIKit/UIKit.h>

@interface UITableView (Ext)

/// 选中indexPath后显示到UITableView的可视范围内
/**
 根据indexPath的位置自动选择scrollPosition，使得选中indexPath后显示在UITableView的可视范围内
 */
- (void)selectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated;

@end
