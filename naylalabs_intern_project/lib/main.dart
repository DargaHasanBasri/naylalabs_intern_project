import 'package:naylalabs_intern_project/constants/color_constans.dart';

import 'export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Cards',
      theme: ThemeData(
        primarySwatch: AppConstans.primarySwatchColor,
      ),
      home: ChangeNotifierProvider(
        create: (_) => APIDataFetchProvider(),
        child: const HomePage(),
      ),
    );
  }
}
