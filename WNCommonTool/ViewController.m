//
//  ViewController.m
//  WNCommonTool
//
//  Created by 宁 on 2019/3/21.
//  Copyright © 2019年 宁. All rights reserved.
//

#import "ViewController.h"
#import "WNCarouseView.h"

@interface ViewController ()<WNCarouselViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WNCarouseView *carousel = [[WNCarouseView alloc] initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 300)];
    carousel.delegate = self;
    //    carousel.scrollDorectionPortrait = YES;
    carousel.imagesArray = @[
                        [UIImage imageNamed:@"image1"],
                        [UIImage imageNamed:@"image2"],
                        [UIImage imageNamed:@"image3"],
                        [UIImage imageNamed:@"image4"],
                        [UIImage imageNamed:@"image5"]
                        ];
    carousel.currentPageColor = [UIColor orangeColor];
    carousel.pageColor = [UIColor grayColor];
    [self.view addSubview:carousel];
}

- (void)carouselView:(WNCarouseView *)carouselView indexOfClickedImageBtn:(NSUInteger )index {
    NSLog(@"点击了第%ld张图片",index);
}

@end
