import '../export.dart';

class MovieNewsCard extends StatelessWidget {
  final MovieDataModel movieData;

  const MovieNewsCard({Key? key, required this.movieData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MovieNewsCardProvider>(
      create: (_) => MovieNewsCardProvider(),
      child: Consumer<MovieNewsCardProvider>(
        builder: (context, cardProvider, _) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  cardProvider.toggleExpand();
                },
                child: Card(
                  child: Container(
                    color: AppConstans.cardBackgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: CardNewsContent(movie: movieData),
                    ),
                  ),
                ),
              ),
              AnimatedCrossFade(
                duration: const Duration(milliseconds: 300),
                crossFadeState: cardProvider.isExpand
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                firstChild: Container(),
                secondChild: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    cardProvider.formatDate(
                      movieData.webPublicationDate.toString(),
                    ),
                    style: const TextStyle(color: AppConstans.mainWhite),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
