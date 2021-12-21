class MovieData {
  List<Info> info;
  int count;

  MovieData({this.info, this.count});

  MovieData.fromJson(Map<dynamic, dynamic> json) {
    if (json['info'] != null) {
      info = new List<Info>();
      json['info'].forEach((v) {
        info.add(new Info.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    if (this.info != null) {
      data['info'] = this.info.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    return data;
  }
}

class Info {
  Id iId;
  String actors;
  String alias;
  String company;
  String directors;
  String dramaType;
  String formerName;
  String imdb;
  String imgurl;
  String introduction;
  String language;
  dynamic premiereDate;
  int rank;
  String region;
  dynamic score;
  String screenwriter;
  String translator;
  String type;
  String url;
  String level;
  int mid;
  String title;
  int latestModify;

  Info(
      {this.iId,
        this.actors,
        this.alias,
        this.company,
        this.directors,
        this.dramaType,
        this.formerName,
        this.imdb,
        this.imgurl,
        this.introduction,
        this.language,
        this.premiereDate,
        this.rank,
        this.region,
        this.score,
        this.screenwriter,
        this.translator,
        this.type,
        this.url,
        this.level,
        this.mid,
        this.title,
        this.latestModify});

  Info.fromJson(Map<dynamic, dynamic> json) {
    iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    actors = json['actors'];
    alias = json['alias'];
    company = json['company'];
    directors = json['directors'];
    dramaType = json['dramaType'];
    formerName = json['formerName'];
    imdb = json['imdb'];
    imgurl = json['imgurl'];
    introduction = json['introduction'];
    language = json['language'];
    premiereDate = json['premiereDate'];
    rank = json['rank'];
    region = json['region'];
    score = json['score'];
    screenwriter = json['screenwriter'];
    translator = json['translator'];
    type = json['type'];
    url = json['url'];
    level = json['level'];
    mid = json['mid'];
    title = json['title'];
    latestModify = json['latestModify'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    if (this.iId != null) {
      data['_id'] = this.iId.toJson();
    }
    data['actors'] = this.actors;
    data['alias'] = this.alias;
    data['company'] = this.company;
    data['directors'] = this.directors;
    data['dramaType'] = this.dramaType;
    data['formerName'] = this.formerName;
    data['imdb'] = this.imdb;
    data['imgurl'] = this.imgurl;
    data['introduction'] = this.introduction;
    data['language'] = this.language;
    data['premiereDate'] = this.premiereDate;
    data['rank'] = this.rank;
    data['region'] = this.region;
    data['score'] = this.score;
    data['screenwriter'] = this.screenwriter;
    data['translator'] = this.translator;
    data['type'] = this.type;
    data['url'] = this.url;
    data['level'] = this.level;
    data['mid'] = this.mid;
    data['title'] = this.title;
    data['latestModify'] = this.latestModify;
    return data;
  }
}

class Id {
  String oid;

  Id({this.oid});

  Id.fromJson(Map<String, dynamic> json) {
    oid = json['$oid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$oid'] = this.oid;
    return data;
  }
}