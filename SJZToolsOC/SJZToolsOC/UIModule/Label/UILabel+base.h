//
//  UILabel+base.h
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/25.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+base.h"

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (base)

@property (nonatomic, copy, readonly) UILabel * (^sjz_text)(NSString *);
@property (nonatomic, copy, readonly) UILabel * (^sjz_font)(UIFont *);
@property (nonatomic, copy, readonly) UILabel * (^sjz_textColor)(UIColor *);
@property (nonatomic, copy, readonly) UILabel * (^sjz_textAlignment)(NSTextAlignment);
@property (nonatomic, copy, readonly) UILabel * (^sjz_numberOfLines)(NSInteger);
@property (nonatomic, copy, readonly) UILabel * (^sjz_attributedText)(NSAttributedString *);
@property (nonatomic, copy, readonly) UILabel * (^sjz_lineBreakMode)(NSLineBreakMode);

@end

NS_ASSUME_NONNULL_END
