import 'package:flutter/material.dart';
import '../../utils/routes_utils.dart';
import '../../views/screens/homepage.dart';
import '../../views/screens/festival_post_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        MyRoutes.homepage: (context) => const HomePage(),
        MyRoutes.detailpage: (context) => const DetailPage(),
      },
    );
  }
}
