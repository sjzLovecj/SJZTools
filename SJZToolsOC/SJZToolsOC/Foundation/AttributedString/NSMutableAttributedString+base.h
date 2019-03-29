//
//  NSMutableAttributedString+base.h
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/26.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableAttributedString (base)

@property (nonatomic, copy, readonly) NSMutableAttributedString * (^sjz_font)(NSString *, UIFont *);


@end

NS_ASSUME_NONNULL_END
