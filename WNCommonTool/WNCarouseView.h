//
//  WNCarouseView.h
//  WNCommonTool
//
//  Created by 宁 on 2019/3/21.
//  Copyright © 2019年 宁. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WNCarouseView;

@protocol WNCarouselViewDelegate <NSObject>
@optional
/**
 *  点击图片的回调事件
 */
- (void)carouselView:(WNCarouseView *)carouselView indexOfClickedImageBtn:(NSUInteger)index;
@end

@interface WNCarouseView : UIView

//传入图片数组
@property (nonatomic, copy) NSArray *imagesArray;

//pageControl颜色设置
@property (nonatomic, strong) UIColor *currentPageColor;
@property (nonatomic, strong) UIColor *pageColor;

@property (weak, nonatomic) id<WNCarouselViewDelegate> delegate;

//是否竖向滚动
@property (nonatomic, assign, getter=isScrollDorectionPortrait) BOOL scrollDorectionPortrait;

@end

NS_ASSUME_NONNULL_END
