import '../export.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Shimmer.fromColors(
            baseColor: AppConstans.mainGrey,
            highlightColor: AppConstans.mainWhite,
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Shimmer.fromColors(
                    baseColor: AppConstans.mainGrey,
                    highlightColor: AppConstans.shadeGrey,
                    child: Container(
                      height: 150,
                      width: 140,
                      color: AppConstans.mainWhite,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 150,
                    width: 195,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Shimmer.fromColors(
                          baseColor: AppConstans.mainGrey,
                          highlightColor: AppConstans.shadeGrey,
                          child: Container(
                            height: 30,
                            width: double.infinity,
                            color: AppConstans.mainWhite,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Shimmer.fromColors(
                          baseColor: AppConstans.mainGrey,
                          highlightColor: AppConstans.shadeGrey,
                          child: Container(
                            height: 20,
                            width: 100,
                            color: AppConstans.mainWhite,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Shimmer.fromColors(
                          baseColor: AppConstans.mainGrey,
                          highlightColor: AppConstans.shadeGrey,
                          child: Container(
                            height: 20,
                            width: 80,
                            color: AppConstans.mainWhite,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Shimmer.fromColors(
                          baseColor: AppConstans.mainGrey,
                          highlightColor: AppConstans.shadeGrey,
                          child: Container(
                            height: 20,
                            width: 150,
                            color: AppConstans.mainWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
