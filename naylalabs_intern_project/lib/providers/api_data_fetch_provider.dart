import '../export.dart';

class APIDataFetchProvider with ChangeNotifier {
  List<MovieDataModel> _movies = [];

  List<MovieDataModel> get movies => _movies;

  Future<List<MovieDataModel>> fetchMovies() async {
    try {
      final fetchedMovies = await APIService.fetchMovies();
      _movies = fetchedMovies;
      return _movies;
    } catch (e) {
      debugPrint('Error fetching data: $e');
      return [];
    }
  }
}
