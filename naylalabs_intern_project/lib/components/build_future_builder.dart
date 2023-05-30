import 'package:naylalabs_intern_project/constants/color_constans.dart';

import '../export.dart';

class BuildFutureBuilder extends StatelessWidget {
  const BuildFutureBuilder({
    super.key,
    required this.fetchDataProvider,
  });

  final APIDataFetchProvider fetchDataProvider;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return FutureBuilder<List<MovieDataModel>>(
      future: fetchDataProvider.fetchMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const ShimmerLoading();
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error fetching data'));
        } else {
          final movies = snapshot.data ?? [];
          return VsScrollbar(
            controller: scrollController,
            showTrackOnHover: true,
            isAlwaysShown: true,
            scrollbarFadeDuration: const Duration(milliseconds: 400),
            scrollbarTimeToFade: const Duration(milliseconds: 400),
            style: VsScrollbarStyle(
              hoverThickness: 10.0,
              radius: const Radius.circular(10),
              thickness: 10.0,
              color: AppConstans.mainIndigo,
            ),
            child: ListView.separated(
              controller: scrollController,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return MovieNewsCard(movieData: movie);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 20),
            ),
          );
        }
      },
    );
  }
}
