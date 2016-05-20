# CXCarousel
一个方便的滚播图控件
## 更新
去掉了一些重复的方法，简化接口的使用。
![](https://github.com/wcxdell/CXCarousel/blob/master/image-folder/img.gif)
## 说明
可以使用传入本地图片和传入url的方式。传入url会将图片进行缓存。用的是sdWebimage,所以这个要有。
## 本地和网络图片都可以使用，网络图片传入url即可。
可以设置是否自动滑动，和滑动的时间间隔。如果设置了自动滑动，离开页面时要调用destroy函数来销毁定时器，在此进入时使用restart启动定时器。
```
self.carousel = [CXCarouselView initWithFrame:CGRectMake(0, 20, DeviceWidth , 200) hasTimer:YES interval:3 placeHolder:[UIImage imageNamed:@"loading"]];
[self.view addSubview:self.carousel];
NSArray *array = @[@"img1",@"img2",@"img3"];
[self.carousel setupWithArray:array];
```
##销毁
```
[self.carousel destroy];
```
##重新启动
```
[self.carousel restart];
```


