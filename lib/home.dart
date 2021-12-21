import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/category.dart';
import 'package:flutter_web/webbar.dart';
import 'package:get/get.dart';
import 'movie.dart';
import 'DataController.dart';

class home extends StatelessWidget {
   DataController _dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 120, left: 10, right: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() {
                  return _dataController.fillText.length >= 1
                      ? Container(
                          child: Container(
                            padding: EdgeInsets.only(left: 50, bottom: 20),
                            child: Text(_dataController.fillText),
                          ),
                        )
                      : Container(
                          padding: EdgeInsets.only(left: 50, bottom: 20));
                }),
                Center(
                  child: Game(),
                ),
              ],
            )),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            WebBar(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  category(
                      widgets: GestureDetector(
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 30,
                      ),
                      decoration: new BoxDecoration(
                        color: Color(0xFFFFEBEE),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.0, 10.0), //阴影y轴偏移量
                            blurRadius: 10, //阴影模糊程度
                            spreadRadius: 1, //阴影扩散程度
                            color: Color.fromRGBO(52, 52, 52, 0.15), //阴影颜色
                          ),
                        ],
                      ),
                    ),
                    onTap: () async {
                      if (_dataController.gameListCount < 1) {
                        print('只有1页');
                      } else {
                        if (_dataController.gameListIndex == 1) {
                          _dataController.updateGameListIndex(
                              _dataController.gameListCount);
                          _dataController.updateGameList(
                              index: _dataController.gameListCount);
                        } else {
                          _dataController.updateGameListIndex(
                              _dataController.gameListIndex - 1);
                          _dataController.updateGameList(
                              index: _dataController.gameListIndex);
                        }
                      }
                    },
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 60,
                          width: 60,
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 30,
                          ),
                          decoration: new BoxDecoration(
                            color: Color(0xFFFFEBEE),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.0, 10.0), //阴影y轴偏移量
                                blurRadius: 10, //阴影模糊程度
                                spreadRadius: 1, //阴影扩散程度
                                color: Color.fromRGBO(52, 52, 52, 0.15), //阴影颜色
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          if (_dataController.gameListCount < 1) {
                            print('只有1页');
                          } else {
                            if (_dataController.gameListIndex ==
                                _dataController.gameListCount) {
                              _dataController.updateGameListIndex(1);
                              _dataController.updateGameList(
                                  index: 1);
                            } else {
                              _dataController.updateGameListIndex(
                                  _dataController.gameListIndex + 1);
                              _dataController.updateGameList(
                                  index: _dataController.gameListIndex);;
                            }
                          }
                        },
                      ),
                    ],
                  ),
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
