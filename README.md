# HYProgressView
带标题的节点进度条封装


![progressImg.png](https://github.com/zhangyuchao/HYProgressView/blob/master/Image/progressImg.png)

## 代码演示
HYProView *proView = [[HYProView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 100)];



[proView titleArr:@[@"1",@"2",@"3"] index:2];//titleArr:



[self.view addSubview:proView];

## 具体说明
可以自定义进度条的字体、大小、颜色等状态，使用时直接导入HYProView的.h和.m文件，初始化后调用方法，直接传入标题数组和integer进度节点。
