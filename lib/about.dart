import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'webbar.dart';
import 'category.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(top: 140, left: 10, right: 10, bottom: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '特别感谢\n',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    launch('https://v.dsb.ink/#/');
                  },
                  child: Text(
                    'https://v.dsb.ink/#/',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          )),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 10),
        child: Column(
          children: [
            WebBar(),
            Expanded(
              child: Row(
                children: [
                  category(
                    widgets: Container(),
                  )
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
