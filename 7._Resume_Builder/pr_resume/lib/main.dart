import 'package:flutter/material.dart';
import 'package:pr_resume/utils/myroutes.dart';
import 'package:pr_resume/views/screens/buildoptions/contact_info.dart';
import 'package:pr_resume/views/screens/homepage.dart';
import 'package:pr_resume/views/screens/resume_workspace.dart';

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
        colorSchemeSeed: Colors.red,
      ),
      routes: {
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.resume: (context) => const ResumeWorkSpace(),
        MyRoutes.buildOptions[0]['name'] : (context) => const ContactInfoPage(),
      },
    );
  }
}
