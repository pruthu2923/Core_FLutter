import 'package:festival_post_app/utils/ui_helpers/myroutes.dart';
import 'package:festival_post_app/views/screens/homepage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const FestivalApp());
}

class FestivalApp extends StatelessWidget {
  const FestivalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,

      ),
      routes: {
        MyRoutes.homepage : (context) => HomePage(),
      },
    );
  }
}
