class NewsModel {
  String? status;
  int? totalresults;
  List<Articles> articles = [];

  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalresults = json['totalresults'];
    json['articles'].forEach((element) {
      articles.add(Articles.fromJson(element));
    });
  }
}

class Articles {
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
}
