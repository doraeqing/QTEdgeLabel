//
//  TCTEdgLabel.m
//
//
//  Created by LuxlightQ on 16/3/17.
//  Copyright © 2016年  All rights reserved.
//

#import "LuxQEdgeLabel.h"

@implementation LuxQEdgeLabel

- (void)drawTextInRect:(CGRect)rect {
    self.textAlignment = NSTextAlignmentCenter;
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.edgeInset)];
}
- (CGSize)intrinsicContentSize {
    CGSize size = [super intrinsicContentSize];
    size.width += self.edgeInset.left + self.edgeInset.right;
    size.height += self.edgeInset.top + self.edgeInset.bottom;
    return size;
}
- (void)setEdgeInset:(UIEdgeInsets)edgeInset {
    _edgeInset = edgeInset;
    [self invalidateIntrinsicContentSize];
}
@end
