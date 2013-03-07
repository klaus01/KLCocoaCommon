//
//  UITableView+Ext.m
//  KLCocoaCommon
//
//  Created by 柯磊 on 13-2-28.
//
//

#import "UITableView+Ext.h"

@implementation UITableView (Ext)

- (void)selectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated
{
    CGRect cellFrame = [self rectForRowAtIndexPath:indexPath];
    UITableViewScrollPosition scrollPosition;
    if (cellFrame.origin.y < self.contentOffset.y)
        scrollPosition = UITableViewScrollPositionTop;
    else if (CGRectGetMaxY(cellFrame) > (self.contentOffset.y + self.bounds.size.height))
        scrollPosition = UITableViewScrollPositionBottom;
    else
        scrollPosition = UITableViewScrollPositionNone;
    [self selectRowAtIndexPath:indexPath animated:animated scrollPosition:scrollPosition];
}

@end
