import 'package:flutter/material.dart';
import 'package:resume_app/utils/myroutes.dart';
import 'package:resume_app/views/screens/buildoptions/CarrierObj_page.dart';
import 'package:resume_app/views/screens/buildoptions/contact_info.dart';
import 'package:resume_app/views/screens/buildoptions/declaration_page.dart';
import 'package:resume_app/views/screens/buildoptions/education_page.dart';
import 'package:resume_app/views/screens/buildoptions/experiencepage.dart';
import 'package:resume_app/views/screens/buildoptions/personal_page.dart';
import 'package:resume_app/views/screens/buildoptions/project_page.dart';
import 'package:resume_app/views/screens/buildoptions/reference_page.dart';
import 'package:resume_app/views/screens/buildoptions/technicalpage.dart';

import 'package:resume_app/views/screens/homepage.dart';

import 'package:resume_app/views/screens/resume_workspace.dart';

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
        MyRoutes.buildOptions[0]['name']: (context) => const ContactInfoPage(),
        MyRoutes.buildOptions[1]['name']: (context) => const CarrierObjectivePage(),
        MyRoutes.buildOptions[2]['name']: (context) => const PersonalDetailsPage(),
        MyRoutes.buildOptions[3]['name']: (context) => const EducationPage(),
        MyRoutes.buildOptions[4]['name']: (context) => const ExperiencePage(),
        MyRoutes.buildOptions[5]['name']: (context) => const TechnicalSkillPage(),
        MyRoutes.buildOptions[7]['name']: (context) => const ProjectPage(),
        MyRoutes.buildOptions[9]['name']: (context) => const ReferencePage(),
        MyRoutes.buildOptions[10]['name']: (context) => const DeclarationPage()
      },
    );
  }
}
