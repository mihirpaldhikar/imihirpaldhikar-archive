class YoutubeModel {
  YoutubeModel({
    this.kind,
    this.etag,
    this.regionCode,
    this.pageInfo,
    this.items,
  });

  YoutubeModel.fromJson(dynamic json) {
    kind = json['kind'];
    etag = json['etag'];
    regionCode = json['regionCode'];
    pageInfo =
        json['pageInfo'] != null ? PageInfo.fromJson(json['pageInfo']) : null;
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? kind;
  String? etag;
  String? regionCode;
  PageInfo? pageInfo;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['etag'] = etag;
    map['regionCode'] = regionCode;
    if (pageInfo != null) {
      map['pageInfo'] = pageInfo?.toJson();
    }
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Items {
  Items({
    this.kind,
    this.etag,
    this.id,
    this.snippet,
  });

  Items.fromJson(dynamic json) {
    kind = json['kind'];
    etag = json['etag'];
    id = json['id'] != null ? Id.fromJson(json['id']) : null;
    snippet =
        json['snippet'] != null ? Snippet.fromJson(json['snippet']) : null;
  }
  String? kind;
  String? etag;
  Id? id;
  Snippet? snippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['etag'] = etag;
    if (id != null) {
      map['id'] = id?.toJson();
    }
    if (snippet != null) {
      map['snippet'] = snippet?.toJson();
    }
    return map;
  }
}

class Snippet {
  Snippet({
    this.publishedAt,
    this.channelId,
    this.title,
    this.description,
    this.thumbnails,
    this.channelTitle,
    this.liveBroadcastContent,
    this.publishTime,
  });

  Snippet.fromJson(dynamic json) {
    publishedAt = json['publishedAt'];
    channelId = json['channelId'];
    title = json['title'];
    description = json['description'];
    thumbnails = json['thumbnails'] != null
        ? Thumbnails.fromJson(json['thumbnails'])
        : null;
    channelTitle = json['channelTitle'];
    liveBroadcastContent = json['liveBroadcastContent'];
    publishTime = json['publishTime'];
  }
  String? publishedAt;
  String? channelId;
  String? title;
  String? description;
  Thumbnails? thumbnails;
  String? channelTitle;
  String? liveBroadcastContent;
  String? publishTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['publishedAt'] = publishedAt;
    map['channelId'] = channelId;
    map['title'] = title;
    map['description'] = description;
    if (thumbnails != null) {
      map['thumbnails'] = thumbnails?.toJson();
    }
    map['channelTitle'] = channelTitle;
    map['liveBroadcastContent'] = liveBroadcastContent;
    map['publishTime'] = publishTime;
    return map;
  }
}

class Thumbnails {
  Thumbnails({
    this.defaultThumbnail,
    this.medium,
    this.high,
  });

  Thumbnails.fromJson(dynamic json) {
    defaultThumbnail =
        json['default'] != null ? Default.fromJson(json['default']) : null;
    medium = json['medium'] != null ? Medium.fromJson(json['medium']) : null;
    high = json['high'] != null ? High.fromJson(json['high']) : null;
  }
  Default? defaultThumbnail;
  Medium? medium;
  High? high;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (defaultThumbnail != null) {
      map['default'] = defaultThumbnail?.toJson();
    }
    if (medium != null) {
      map['medium'] = medium?.toJson();
    }
    if (high != null) {
      map['high'] = high?.toJson();
    }
    return map;
  }
}

class High {
  High({
    this.url,
    this.width,
    this.height,
  });

  High.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  int? width;
  int? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}

class Medium {
  Medium({
    this.url,
    this.width,
    this.height,
  });

  Medium.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  int? width;
  int? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}

class Default {
  Default({
    this.url,
    this.width,
    this.height,
  });

  Default.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  int? width;
  int? height;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}

class Id {
  Id({
    this.kind,
    this.videoId,
  });

  Id.fromJson(dynamic json) {
    kind = json['kind'];
    videoId = json['videoId'];
  }
  String? kind;
  String? videoId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['videoId'] = videoId;
    return map;
  }
}

class PageInfo {
  PageInfo({
    this.totalResults,
    this.resultsPerPage,
  });

  PageInfo.fromJson(dynamic json) {
    totalResults = json['totalResults'];
    resultsPerPage = json['resultsPerPage'];
  }
  int? totalResults;
  int? resultsPerPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalResults'] = totalResults;
    map['resultsPerPage'] = resultsPerPage;
    return map;
  }
}
