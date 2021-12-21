import 'package:flutter/material.dart';
import 'category.dart';
import 'webbar.dart';

class Download extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const biaotiTextStyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.w600);
    const erjiTextStyle = TextStyle(
        fontSize: 18,
        color: Color(0xFF6d6d6d)
    );
    const linkTextStyle = TextStyle(
      fontSize: 16,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 140, left: 10, right: 10, bottom: 20),
            child: Center(
              child: Container(
                height: 1000,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '爬虫源码下载',
                      style: biaotiTextStyle,
                    ),
                    Text(
                      'https://github.com/Kevin0z0/yyeTs-resource-spider',
                      style: linkTextStyle,
                    ),
                    Text(
                      '爬取的资源下载',
                      style: biaotiTextStyle,
                    ),
                    Text(
                      '人人影视所有海报图片(可能会失效)',
                      style: erjiTextStyle,
                    ),
                    Text('https://pan.baidu.com/s/1F7v28wtBxL--KCh6K2VN2w',
                        style: linkTextStyle),
                    Text('提取码:6666'),
                    Text(
                      '最后一次影视信息',
                      style: erjiTextStyle,
                    ),
                    Text('https://kevin0z0.lanzoui.com/itZpMljtd8f',
                        style: linkTextStyle),
                    Text(
                      '最后一次资源信息',
                      style: erjiTextStyle,
                    ),
                    Text('https://github.com/tgbot-collection/YYeTsBot',
                        style: linkTextStyle),
                    Text('https://kevin0z0.lanzoui.com/i72Xrlju5za',
                        style: linkTextStyle),
                    Text(
                      '2020.06.08更新',
                      style: erjiTextStyle,
                    ),
                    Text('https://kevin0z0.lanzoui.com/b0106tzwj', style: linkTextStyle),
                    Text('密码:adpg'),
                    Text(
                      '2020.03.22更新',
                      style: erjiTextStyle,
                    ),
                    Text('https://kevin0z0.lanzoui.com/b0106u0gj', style: linkTextStyle),
                    Text('密码:8p0w'),
                    Text(
                      '2020.02.22更新',
                      style: erjiTextStyle,
                    ),
                    Text('https://kevin0z0.lanzoui.com/b0106u0sb', style: linkTextStyle),
                    Text('密码:dx5n'),
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