//
//  CXCarouselView.h
//  pregnant-information
//
//  Created by 王长旭 on 16/2/25.
//  Copyright © 2016年 sw. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol CXCarouseViewDelegate;
@interface CXCarouselView : UIView

@property (weak, nonatomic) id<CXCarouseViewDelegate> delegate;


-(instancetype)initWithFrame:(CGRect)frame;
-(void) setupWithArray:(NSArray *)array;
-(void) setupWithLocalArray:(NSArray *)array;
+(instancetype)initWithFrame:(CGRect)frame withArray:(NSArray*) array hasTimer:(BOOL) hastimer interval:(NSUInteger) inter;
+(instancetype)initWithFrame:(CGRect)frame hasTimer:(BOOL) hastimer interval:(NSUInteger) inter placeHolder:(UIImage*) image;
@end

@protocol CXCarouseViewDelegate <NSObject>

- (void) carouselTouch:(CXCarouselView*)carousel atIndex:(NSUInteger)index;

@end
