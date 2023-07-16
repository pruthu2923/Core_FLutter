import 'package:clock_app/utils/myroutes.dart';
import 'package:clock_app/views/screens/HomePage.dart';
import 'package:flutter/material.dart';
import '';

void main()
{
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
        MyRoutes.home:(context) => const HomePage(),
      },
    );
  }
}
