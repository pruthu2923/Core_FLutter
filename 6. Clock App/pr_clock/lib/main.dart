import 'package:flutter/material.dart';
import 'package:pr_clock/routes_utils.dart';
import 'package:pr_clock/views/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        MyRoutes.homepage: (context) => const HomePage(),
      },
    );
  }
}
