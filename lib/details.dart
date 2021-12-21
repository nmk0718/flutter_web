import 'package:flutter/material.dart';
import 'webbar.dart';

class Details extends StatelessWidget {
  String title;
  String time;
  String formerName;
  String category;
  dynamic score;
  String introduction;
  String directors;
  String screenwriter;
  String company;
  String actors;

  Details(
      {this.title,
      this.time,
      this.formerName,
      this.category,
      this.score,
      this.introduction,
      this.directors,
      this.screenwriter,
      this.company,
      this.actors});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 140, left: 10, right: 10, bottom: 20),
            child: Center(
              child: Container(
                width: 500,
                padding: EdgeInsets.all(20),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 20,),
                        Text(score == null ? 'N/A' : score.toString(),
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(time, style: TextStyle(fontSize: 20)),
                    SizedBox(height: 20,),
                    Text('简介:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    SizedBox(height: 20,),
                    Text(
                      introduction,
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(height: 20,),
                    Text('导演:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    SizedBox(height: 20,),
                    Text(
                      directors,
                    ),
                    SizedBox(height: 20,),
                    Text('编剧:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    SizedBox(height: 20,),
                    Text(
                      screenwriter,
                    ),
                    SizedBox(height: 20,),
                    Text('公司/电视台:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    SizedBox(height: 20,),
                    Text(
                      company.length < 1 ? '暂无' : company,
                    ),
                    SizedBox(height: 20,),
                    Text('主演:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    SizedBox(height: 20,),
                    Text(
                      actors.length < 1 ? '暂无' : actors,
                    ),
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
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
