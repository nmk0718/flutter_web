import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_web/moviedata.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    //初始化数据
    updateGameList(index: gameListIndex);
  }

  Map<String, dynamic> _parameters = {};

  clearParameters(){
    _parameters.clear();
  }

  removeSearchParameters(){
    _parameters.remove('search');
  }

  updateGameList(
      {@required int index,
      dynamic search,
      dynamic dramatype,
      dynamic level,
      dynamic region,
      dynamic type,
      dynamic year,
      dynamic company,
      dynamic sort}) async {
    _parameters['page'] = index;
    List choicevalue = [
      search,
      dramatype,
      level,
      region,
      type,
      year,
      company,
      sort
    ];
    for (var item in choicevalue) {
      if (item != null) {
        _parameters[item['key']] = item['value'];
      } else {
        print('传递参数为空');
      }
    }
    _blogList.value = [];
    var response;
    response = await Dio()
        .get('https://v.dsb.ink/getinfo.php', queryParameters: _parameters);
    MovieData gamelist = MovieData.fromJson(json.decode(response.toString()));
    if (response.statusCode == 200) {
      _blogList.value = gamelist.info;
      _gameListCount.value = (gamelist.count / 24).ceil();
    }
  }

  //菜单选中索引
  RxInt _menuSelectIndex = 0.obs;

  int get menuSelectIndex => _menuSelectIndex.value;

  //菜单选项
  List<String> _menuList = [
    "首页",
    "下载",
    "关于",
  ];

  List<String> get menuList => _menuList;

  //更新菜单选中后返回页面
  void updateMenuIndex(int index) {
    //更新
    _menuSelectIndex.value = index;

    switch (_menuSelectIndex.value) {
      case 1:
        {
          Get.toNamed('/download');
        }
        break;
      case 2:
        {
          Get.toNamed('/about');
        }
        break;
      default:
        {
          Get.toNamed('/');
        }
        break;
    }
  }

  RxInt _primarycategoryIndex = 0.obs;

  int get primarycategoryIndex => _primarycategoryIndex.value;

  void updateprimarycategory(int index) {
    _primarycategoryIndex.value = index;
  }

  List _primarycategory = [
    [
      '全部',
      '电影',
      '电视剧',
      '纪录片',
      '公开课',
    ],
    [
      '全部',
      'A',
      'B',
      'C',
      'D',
      'E',
    ],
    [
      '全部',
      '美国',
      '大陆',
      '日本',
      '韩国',
      '英国',
    ],
    [
      '全部',
      '动作',
      '战争',
      '剧情',
      '喜剧',
      '生活',
    ],
    [
      '全部',
      '2021',
      '2020',
      '2019',
      '2018',
      '2017',
    ],
    [
      '全部',
      'A&E',
      'ABC',
      'ABC Family',
      'Adult Swim',
      'Amazon',
    ],
    [
      '全部',
      '按播放日期',
      '按排名',
      '按评分',
    ],
  ];

  List get primarycategory => _primarycategory;

  RxInt _categorySelectIndex = 0.obs;

  int get categorySelectIndex => _categorySelectIndex.value;

  List<String> _secondarycategory = [
    '类别', //dramatype
    '等级', //level
    '地区', //region
    '类型', //type
    '年代', //year
    '公司', //company
    '排序', //sort
    '还原'
  ];

  List<String> get secondarycategory => _secondarycategory;

  updatecategorySelectIndex(int index) {
    _categorySelectIndex.value = index;
    _primarycategoryIndex.value = 0;
  }


  RxInt _gameListIndex = 1.obs;
  RxInt _gameListCount = 0.obs;

  int get gameListIndex => _gameListIndex.value;

  int get gameListCount => _gameListCount.value;

  //当前显示类目的文章数据
  RxList _blogList = [].obs;

  RxList get blogList => _blogList;

  RxBool _menustatus = false.obs;

  bool get menustatus => _menustatus.value;

  void updateMenuStatus() {
    if (_menustatus.value == false) {
      _menustatus.value = true;
    } else {
      _menustatus.value = false;
    }
  }

  void updateGameListIndex(int index) {
    _gameListIndex.value = index;
  }

  RxString _fillText = ''.obs;

  String get fillText => _fillText.value;

  void updateFillText(String text) {
    _fillText.value = text;
  }
}
