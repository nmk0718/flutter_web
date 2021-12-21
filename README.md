# flutter_web

该项目使用flutter模仿https://v.dsb.ink/#/

使用的接口均来自https://v.dsb.ink/#/的后端接口

浏览器调用接口会出现跨域
```
在Flutter/packages/flutter_tools/lib/src/web/chrome.dart 
'--disable-translate'下面加入'--disable-web-security'

删除flutter\bin\cache下的flutter_tools.snapshot和flutter_tools.stamp

之后执行flutter doctor 重新编译flutter_tools,然后重新启动项目flutter run -d chrome
```


解决 Flutter Web 加载慢的问题

```
https://blog.csdn.net/qq_35867494/article/details/118516893
```

代码自适应和响应式编程学习自https://www.bilibili.com/video/BV1di4y1A7Qe

项目打包

```
flutter build web --web-renderer html
打开速度最快,兼容性好

flutter build web 
打开速度一般,兼容性好

flutter build web --web-renderer canvaskit
打开速度最慢,兼容性好
```
https://cloud.tencent.com/developer/article/1908180

忽略空安全打包
```
flutter build web --web-renderer html --no-sound-null-safety
```