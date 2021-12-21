import 'package:flutter/material.dart';
import 'webbar.dart';
import 'category.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const biaotiTextStyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.w600);
    const erjiTextStyle = TextStyle(
        fontSize: 18,
        color: Color(0xFF6d6d6d)
    );
    const linkTextStyle = TextStyle(
      fontSize: 18,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 140, left: 30, right: 30, bottom: 20),
            child: Center(
              child: Container(
                height: 1000,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '特别感谢',
                      style: biaotiTextStyle,
                    ),
                    Text(
                      '果核剥壳',
                      style: linkTextStyle,
                    ),
                    Text('BennyThink',
                        style: linkTextStyle),
                    Text(
                      '简介',
                      style: biaotiTextStyle,
                    ),
                    Text('这是一个人人影视内容查询的小站\n小站所有信息都从人人影视官方爬取，数据到2021年一月初，很多资源可能没有录进\n有任何意见或资源问题可以加群或联系邮箱、微信\nSOZMZ qq群：663882897\n接与网页设计，python相关的大学生作业、毕设\n以及各种爬虫程序开发、网站搭建，价格公道\n可手把手教学，教会为止'),
                    Text(
                      '联系方式',
                      style: biaotiTextStyle,
                    ),
                    Text(
                      '邮箱：zkw644720@gmail.com\n微信：zkwkkkk',
                    ),
                    Text('更新',
                        style: biaotiTextStyle),
                    Text(
                      '2021.2.6 v2.1',
                      style: erjiTextStyle,
                    ),
                    Text('添加了搜索功能，可以搜索资源了\n优化了动画效果/n把图片全部放到本地服务器，加快海报加载速度\n有需要提供的影视资源可加群反馈\n不再提供前端源码下载'),
                    Text(
                      '2020.9.18 v2.0',
                      style: erjiTextStyle,
                    ),
                    Text('这是一个在vue3推出前两个小时完成的项目\n用了vue2全家桶重写页面，经过几天的反向优化使过渡动画更加卡顿\n设计了毫无亮点的UI界面\n直接取消了搜索（图标）\n加入了打赏的二维码，在线乞讨'),
                    Text(
                      '2019.9.02 v1.01 Beta',
                      style: erjiTextStyle,
                    ),
                    Text('添加了响应式css，可以在手机上看了，但是没做优化\n如果有手机不能看或排版混乱请及时反馈\n还是不支持剧名搜索（懒）'),
                    Text(
                      '2019.8.31 v1.0 Beta',
                      style: erjiTextStyle,
                    ),
                    Text('暂不支持手机查看以及剧名搜索\n粗略实现影视筛选功能'),
                  ],
                ),
              ),
            )),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 10),
        child: Column(
          children: [
            WebBar(),
            Expanded(
              child: Row(
                children: [
                  category(widgets: Container(),)
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}