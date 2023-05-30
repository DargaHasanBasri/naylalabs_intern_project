import 'package:naylalabs_intern_project/constants/color_constans.dart';

import '../export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final movieProvider = Provider.of<APIDataFetchProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstans.mainIndigo,
        elevation: 0,
        toolbarHeight: 80,
        title: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 33),
              child: Text(
                'The',
                style: TextStyle(
                  color: AppConstans.mainWhite,
                  fontFamily: FontConstants.timesNewRoman,
                  fontSize: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Row(
                children: const [
                  Text(
                    'Guardian',
                    style: TextStyle(
                      color: AppConstans.mainWhite,
                      fontFamily: FontConstants.timesNewRoman,
                      fontSize: 35,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        'News',
                        style: TextStyle(
                          color: AppConstans.mainWhite,
                          fontFamily: FontConstants.timesNewRoman,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: BuildFutureBuilder(fetchDataProvider: movieProvider),
      backgroundColor: AppConstans.backgroundColor,
    );
  }
}
