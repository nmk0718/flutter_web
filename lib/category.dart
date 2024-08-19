import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'DataController.dart';

class category extends StatelessWidget {
  Widget widgets;

  category({this.widgets});

  final DataController _dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _dataController.menustatus == false
              ? widgets
              : Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: MediaQuery.of(context).size.height - 120,
                  width: 370,
                  decoration: new BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    // color: Colors.lightBlueAccent,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Wrap(
                              children: [
                                ...List.generate(
                                    _dataController.secondarycategory.length,
                                    (index) => GestureDetector(
                                          onTap: () {
                                            if(index<7){
                                              _dataController.updatecategorySelectIndex(index);
                                            }else{
                                              _dataController.clearParameters();
                                              _dataController.updateFillText('');
                                              _dataController.updateGameList(index: 1);
                                            }
                                          },
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                top: 10,
                                                left: 20,
                                                right: 20,
                                                bottom: 10),
                                            decoration: _dataController
                                                        .categorySelectIndex ==
                                                    index
                                                ? BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                    color: Color(0xFFeaeaea),
                                                  )
                                                : BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                    color: Colors.transparent,
                                                  ),
                                            child: Text(
                                              _dataController
                                                  .secondarycategory[index],
                                              style: TextStyle(
                                                  fontSize: 16),
                                            ),
                                          ),
                                        )),
                              ],
                              runSpacing: 10,
                            ),
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height - 110,
                        width: 1,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Wrap(
                              children: [
                                ...List.generate(
                                    _dataController
                                        .primarycategory[
                                            _dataController.categorySelectIndex]
                                        .length,
                                    (index) => GestureDetector(
                                          onTap: () {
                                            _dataController.updateprimarycategory(index);
                                            _dataController.updateGameListIndex(1);
                                            if(_dataController.fillText.length>=1){
                                              _dataController.removeSearchParameters();
                                            }

                                            if (_dataController.primarycategoryIndex == 0) {
                                              _dataController.updatemovieList(index: 1);
                                            } else {
                                              String selectedCategory = _dataController.primarycategory[_dataController.categorySelectIndex][index];
                                              _dataController.updateFillText(selectedCategory);

                                              String key;
                                              switch (_dataController.categorySelectIndex) {
                                                case 0:
                                                  key = 'dramatype';
                                                  break;
                                                case 1:
                                                  key = 'level';
                                                  break;
                                                case 2:
                                                  key = 'region';
                                                  break;
                                                case 3:
                                                  key = 'type';
                                                  break;
                                                case 4:
                                                  key = 'year';
                                                  break;
                                                case 5:
                                                  key = 'company';
                                                  break;
                                                case 6:
                                                  key = 'sort';
                                                  break;
                                                default:
                                                  key = '';
                                              }
                                              _dataController.updatemovieList(index: 1, dramatype: {'key': key, 'value': selectedCategory});
                                            }
                                          },
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                top: 10,
                                                left: 20,
                                                right: 20,
                                                bottom: 10),
                                            decoration: _dataController
                                                        .primarycategoryIndex ==
                                                    index
                                                ? BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                    color: Color(0xFFeaeaea),
                                                  )
                                                : BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                    color: Colors.transparent,
                                                  ),
                                            child: Text(
                                              _dataController.primarycategory[
                                                      _dataController
                                                          .categorySelectIndex]
                                                  [index],
                                              style: TextStyle(
                                                  fontSize: 16),
                                            ),
                                          ),
                                        )),
                              ],
                              spacing: 20,
                              runSpacing: 30,
                              alignment: WrapAlignment.start,
                              runAlignment: WrapAlignment.end,
                            ),
                          )),
                    ],
                  ),
                ),
        ],
      );
    });
  }
}
