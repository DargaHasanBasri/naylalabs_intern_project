import '../export.dart';

class CardNewsContent extends StatelessWidget {
  final MovieDataModel movie;

  const CardNewsContent({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(movie.thumbnail),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          height: 150,
          width: 195,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.webTitle,
                style: const TextStyle(
                  fontSize: 17,
                  color: AppConstans.mainWhite,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        'Rating',
                        style: TextStyle(color: AppConstans.shadeGrey2),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ...List<Widget>.generate(4, (index) {
                              if (index < int.parse(movie.starRating)) {
                                return const Icon(
                                  Icons.star,
                                  color: AppConstans.mainYellow,
                                  size: 20,
                                );
                              } else {
                                return const Icon(
                                  Icons.star,
                                  color: AppConstans.mainWhite,
                                  size: 20,
                                );
                              }
                            }),
                          ],
                        ),
                        Container(
                          height: 20,
                          width: 85,
                          decoration: BoxDecoration(
                            color: AppConstans.shadeGrey3,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              movie.sectionName.split(' ').join(''),
                              style: const TextStyle(
                                color: AppConstans.mainWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
