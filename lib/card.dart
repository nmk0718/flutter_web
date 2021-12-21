import 'package:flutter/material.dart';

class card extends StatelessWidget {

  String title;
  String time;
  // String imageurl;
  String category;
  dynamic score;
  card({this.title,this.time,this.category,this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 380,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 10.0), //阴影y轴偏移量
            blurRadius: 10, //阴影模糊程度
            spreadRadius: -6, //阴影扩散程度
            color: Color.fromRGBO(52, 52, 52, 0.15), //阴影颜色
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                decoration: new BoxDecoration(
                  color: Color.fromARGB(200, 238, 223, 216),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                ),
                // child: Align(
                //   alignment: Alignment.center,
                //   child: Image.network(
                //     imageurl.toString(),
                //     width: 180,
                //     fit: BoxFit.fitHeight,
                //   ),)

            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 250,
                            child: Text(
                              title,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                          ),
                          Text(time),
                          Container(
                            width: 300,
                            child: Text(category,overflow: TextOverflow.ellipsis,),
                          )
                        ],
                      ),
                    ),
                    Text(
                      score==null?'N/A':score.toString(),
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
