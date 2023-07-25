import 'package:flutter/material.dart';
import 'package:invoice/utils/myroutes.dart';
import 'package:invoice/views/screens/companypage.dart';
import 'package:invoice/views/screens/customerpage.dart';
import 'package:invoice/views/screens/homepage.dart';
import 'package:invoice/views/screens/splashscreen.dart';

void main() {
  runApp(
    const MyApp(),
  );
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
      initialRoute: MyRoutes.splashscreen,
      routes: {
        MyRoutes.splashscreen: (context) => const SplashScreen(),
        MyRoutes.homepage: (context) => const HomePage(),
        MyRoutes.customerpage: (context) => const CustomerPage(),
        MyRoutes.companypage: (context) => CompanyPage()
      },
    );
  }
}
