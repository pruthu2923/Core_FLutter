import 'package:flutter/material.dart';
import 'package:resume_app/utils/Appbars/technicalbar.dart';

class TechnicalSkillPage extends StatefulWidget {
  const TechnicalSkillPage({Key? key}) : super(key: key);

  @override
  State<TechnicalSkillPage> createState() => _TechnicalSkillPageState();
}

class _TechnicalSkillPageState extends State<TechnicalSkillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TechnicalAppbar(),
    );
  }
}
