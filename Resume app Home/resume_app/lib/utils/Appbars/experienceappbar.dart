import 'package:flutter/material.dart';

import '../backbutton.dart';
import '../colors.dart';

class ExperienceAppbar extends StatefulWidget {
  const ExperienceAppbar({Key? key}) : super(key: key);

  @override
  State<ExperienceAppbar> createState() => _ExperienceAppbarState();
}

class _ExperienceAppbarState extends State<ExperienceAppbar> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Container(
      color: MyBg,
      width: double.infinity,
      height: w * 0.55,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyBackButton(),
            SizedBox(
              width: w*0.24,
            ),
            Text(
              "Experience",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
