import 'package:flutter/material.dart';
import 'package:quotes_app/utils/routes_utils.dart';
import 'package:quotes_app/views/screens/homepage.dart';
import 'package:quotes_app/views/screens/quote_detail_page.dart';

void main() {
  runApp(MyApp());
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
        MyRoutes.homepage: (context) => HomePage(),
        MyRoutes.detailpage: (context) => DetailPage(),
      },
    );
  }
}
