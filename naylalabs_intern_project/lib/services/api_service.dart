import 'package:dio/dio.dart';

import '../export.dart';

class APIService {
  static Future<List<MovieDataModel>> fetchMovies() async {
    try {
      final response = await Dio().get(
          'https://content.guardianapis.com/search?q=12%20years%20a%20slave&format=json&tag=film/film,tone/reviews&from-date=2010-01-01&show-tags=contributor&show-fields=starRating,headline,thumbnail,short-url&order-by=relevance&api-key=test');

      final results = response.data['response']['results'];

      List<MovieDataModel> fetchedMovies = results
          .map<MovieDataModel>((json) => MovieDataModel.fromJson(json))
          .toList();

      return fetchedMovies;
    } catch (e) {
      debugPrint('Error fetching data: $e');
      return [];
    }
  }
}
