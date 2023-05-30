class MovieDataModel {
  final String sectionName;
  final String webTitle;
  final DateTime webPublicationDate;
  final String thumbnail;
  final String headline;
  final String starRating;

  MovieDataModel(
      {required this.sectionName,
      required this.webTitle,
      required this.webPublicationDate,
      required this.thumbnail,
      required this.headline,
      required this.starRating});

  factory MovieDataModel.fromJson(Map<String, dynamic> json) {
    return MovieDataModel(
      sectionName: json['sectionName'],
      webTitle: json['webTitle'],
      webPublicationDate: DateTime.parse(json['webPublicationDate']),
      thumbnail: json['fields']['thumbnail'],
      headline: json['fields']['headline'],
      starRating: json['fields']['starRating'],
    );
  }
}
