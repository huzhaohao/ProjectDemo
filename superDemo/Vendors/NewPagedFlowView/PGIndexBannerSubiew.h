//
//  PGIndexBannerSubiew.h
//  KDS_Phone
//
//  Created by 贾少英 on 2017/10/27.
//  Copyright © 2017年 kds. All rights reserved.
//

/******************************
 
 可以根据自己的需要继承PGIndexBannerSubiew
 
 ******************************/

#import <UIKit/UIKit.h>

@interface PGIndexBannerSubiew : UIView

/**
 *  主图
 */
@property (nonatomic, strong) UIImageView *mainImageView;

/**
 *  用来变色的view
 */
@property (nonatomic, strong) UIView *coverView;

@property (nonatomic, copy) void (^didSelectCellBlock)(NSInteger tag, PGIndexBannerSubiew *cell);

/**
 设置子控件frame,继承后要重写

 @param superViewBounds <#superViewBounds description#>
 */
- (void)setSubviewsWithSuperViewBounds:(CGRect)superViewBounds;

@end
