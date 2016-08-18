//
//  ViewController.m
//  CXCarouselView
//
//  Created by 王长旭 on 16/3/2.
//  Copyright © 2016年 王长旭. All rights reserved.
//

#import "ViewController.h"
#import "CXCarouselView.h"

#define DeviceWidth     [UIScreen mainScreen].bounds.size.width
#define DeviceHeight    [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<CXCarouseViewDelegate>
@property (strong, nonatomic) CXCarouselView * carousel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.carousel = [CXCarouselView initWithFrame:CGRectMake(0, 20, DeviceWidth , 200) hasTimer:YES interval:3 placeHolder:[UIImage imageNamed:@"loading"]];
    self.carousel.delegate = self;
    [self.view addSubview:self.carousel];
    NSArray *array = @[@"img1",@"img2",@"img3"];
    [self.carousel setupWithArray:array];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)carouselTouch:(CXCarouselView *)carousel atIndex:(NSUInteger)index{
    NSLog(@"%@",@(index).stringValue);
}

@end
