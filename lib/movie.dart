import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'DataController.dart';
import 'card.dart';
import 'details.dart';

class Game extends StatelessWidget {
  final DataController _dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          RxList list = _dataController.blogList;
          return list.length != 0
              ? Column(
                  children: [
                    Wrap(
                      children: list
                          .map((item) => GestureDetector(
                                child: card(
                                  title: item.title,
                                  time: item.premiereDate.toString(),
                                  // imageurl: item.imgurl,
                                  category:
                                      '${item.level}级/${item.type}/${item.dramaType}/${item.language}/${item.region}',
                                  score: item.score,
                                ),
                                onTap: () {
                                  Get.to(Details(
                                    title: item.title,
                                    time: item.premiereDate.toString(),
                                    formerName: item.formerName,
                                    category:
                                        '${item.level}级/${item.type}/${item.dramaType}/${item.language}/${item.region}',
                                    score: item.score,
                                    introduction: item.introduction,
                                    directors: item.directors,
                                    screenwriter: item.screenwriter,
                                    company: item.company,
                                    actors: item.actors,
                                  ));
                                },
                              ))
                          .toList(),
                      spacing: 40,
                      runSpacing: 40,
                      alignment: WrapAlignment.start,
                      runAlignment: WrapAlignment.end,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      '${_dataController.gameListIndex}/${_dataController.gameListCount}',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                )
              : Container(
                  child: Text(
                    '无结果',
                    style: TextStyle(fontSize: 40),
                  ),
                );
        }),
        SizedBox(
          height: 20,
        ),
        Text('有帮助的话赞赏一下我哦💕', style: TextStyle(fontSize: 18)),
        SizedBox(
          height: 20,
        ),
        Image.network(
          'https://nmk0718.github.io/image/Reward_Code.png',
          height: 300,
          width: 300,
        ),
      ],
    );
  }
}
