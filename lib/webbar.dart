import 'package:flutter/material.dart';
import 'package:flutter_web/DataController.dart';
import 'package:get/get.dart';

class WebBar extends StatelessWidget {
  DataController _dataController = Get.put(DataController());
  final fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1900),
      padding: EdgeInsets.only(left: 40, right: 40),
      height: 70,
      decoration: new BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 40.0), //阴影y轴偏移量
            blurRadius: 70, //阴影模糊程度
            spreadRadius: -10, //阴影扩散程度
            color: Color.fromRGBO(52, 52, 52, 0.15), //阴影颜色
          ),
        ],
      ),
      child: Row(
        children: [
          Row(
            children: [
              GestureDetector(
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 26,
                  ),
                  onTap: (){
                    _dataController.updateMenuStatus();
                  },
                ),
              SizedBox(width: 40),
              MediaQuery.of(context).size.width < 900
                  ? Container()
                  : Obx(() {
                      return Wrap(
                        spacing: 40,
                        children: [
                          ...List.generate(
                              _dataController.menuList.length,
                              (index) => GestureDetector(
                                    onTap: () {
                                      _dataController.updateMenuIndex(index);
                                      //
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          top: 10,
                                          left: 20,
                                          right: 20,
                                          bottom: 10),
                                      decoration: _dataController
                                                  .menuSelectIndex ==
                                              index
                                          ? BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                              color: Color(0xFFeaeaea),
                                            )
                                          : BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                              color: Colors.transparent,
                                            ),
                                      child: Text(
                                        _dataController.menuList[index],
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  )),
                        ],
                      );
                    })
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('KのGame🎮',
                    style: TextStyle(color: Colors.black, fontSize: 28)),
              ],
            ),
          ),
          Row(
            children: [
              MediaQuery.of(context).size.width < 600
                  ? Container()
                  : Container(
                      width: MediaQuery.of(context).size.width / 7 - 10,
                      height: 35,
                      child: TextField(
                        controller: fieldText,
                        cursorColor: Colors.grey,
                        onSubmitted: (text){
                          _dataController.updateGameListIndex(1);
                          _dataController.updateFillText(text);
                          if(_dataController.fillText.length>=1){
                            _dataController.updateGameList(index:1,search:{
                              'key':'search',
                              'value':text,
                            });
                            fieldText.clear();
                          }else{
                            print('输入为空');
                          }
                        },
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(234, 234, 234, 0.8),
                          filled: true,
                          contentPadding: EdgeInsets.all(10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            //未选中时候的颜色
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            //选中时外边框颜色
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 28,
                ),
                onTap: (){
                  _dataController.updateGameListIndex(1);
                  _dataController.updateFillText(fieldText.text);
                  if(_dataController.fillText.length>=1){
                    _dataController.updateGameList(index: 1,search:{
                      'key':'search',
                      'value':_dataController.fillText,
                    });
                    fieldText.clear();
                  }else{
                    print('输入为空');
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
