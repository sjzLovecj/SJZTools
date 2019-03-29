//
//  UIView+base.h
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/25.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 点击事件
 */
typedef void (^SJZTouchUp)(void);

@interface UIView (base)

/**
 Frame 布局 和 大小
 */
@property (nonatomic, assign) CGFloat sjzX;
@property (nonatomic, assign) CGFloat sjzY;
@property (nonatomic, assign) CGFloat sjzWidth;
@property (nonatomic, assign) CGFloat sjzHeight;

@property (nonatomic, assign) CGFloat sjzCenterX;
@property (nonatomic, assign) CGFloat sjzCenterY;

@property (nonatomic, assign, readonly) CGFloat sjzMaxX;
@property (nonatomic, assign, readonly) CGFloat sjzMaxY;

@property (nonatomic, assign) CGFloat sjzBorderWidth;
@property (nonatomic, strong) UIColor * sjzBorderColor;
@property (nonatomic, assign) CGFloat sjzCornerRadius;


#pragma mark -
@property (nonatomic, copy, readonly) UIView * (^sjz_backgorundColor)(UIColor *);


/**
 Frame 布局 和 大小
 */
@property (nonatomic, copy, readonly) UIView * (^sjz_frame)(CGRect);
@property (nonatomic, copy, readonly) UIView * (^sjz_bounds)(CGRect);
@property (nonatomic, copy, readonly) UIView * (^sjz_x)(CGFloat);
@property (nonatomic, copy, readonly) UIView * (^sjz_y)(CGFloat);
@property (nonatomic, copy, readonly) UIView * (^sjz_width)(CGFloat);
@property (nonatomic, copy, readonly) UIView * (^sjz_Height)(CGFloat);

@property (nonatomic, copy, readonly) UIView * (^sjz_centerX)(CGFloat);
@property (nonatomic, copy, readonly) UIView * (^sjz_centerY)(CGFloat);

/**
 描边 和 圆角
 */
@property (nonatomic, copy, readonly) UIView * (^sjz_borderWidth)(CGFloat);
@property (nonatomic, copy, readonly) UIView * (^sjz_borderColor)(UIColor *);
@property (nonatomic, copy, readonly) UIView * (^sjz_cornerRadius)(CGFloat);

@end

NS_ASSUME_NONNULL_END
