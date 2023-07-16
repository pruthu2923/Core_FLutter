import 'package:flutter/material.dart';
import 'package:new_clock/utlils/routes.dart';
import 'package:new_clock/views/screens/homepage.dart';

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
        useMaterial3:true,
      ),
      routes: {
        MyRoutes.homepage: (context) => const homepage(),
      },
    );
  }
}
