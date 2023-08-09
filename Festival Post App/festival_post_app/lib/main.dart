import 'package:festival_post_app/utils/ui_helpers/myroutes.dart';
import 'package:festival_post_app/views/screens/country_festival.dart';
import 'package:festival_post_app/views/screens/homepage.dart';
import 'package:flutter/material.dart';

void main(){
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
        MyRoutes.homepage : (context) => HomePage(),
        MyRoutes.countrydetailpage : (context) => CountryFestivalDetailPage(),
      },
    );
  }
}
