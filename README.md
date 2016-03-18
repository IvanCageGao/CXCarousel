# CXCarousel
一个方便的滚播图控件
## 说明
可以使用传入本地图片和传入url的方式。传入url会将图片进行缓存。用的是sdWebimage,所以这个要有。
## 本地
可以设置是否自动滑动，和滑动的时间间隔。如果设置了自动滑动，离开页面时要调用destroy函数来销毁定时器，在此进入时使用restart启动定时器。
```
self.carousel = [CXCarouselView initWithFrame:CGRectMake(0, 20, DeviceWidth , 200) hasTimer:YES interval:3 placeHolder:[UIImage imageNamed:@"loading"]];
[self.view addSubview:self.carousel];
NSArray *array = @[@"img1",@"img2",@"img3"];
[self.carousel setupWithLocalArray:array];
```
##网络 同上，调用函数换成下面的即可
```
[self.carousel setupWithArray:array];
```
![](https://github.com/wcxdell/CXCarousel/blob/master/image-folder/img.gif)

