import 'package:flutter/material.dart';

import '../backbutton.dart';
import '../colors.dart';

class ProjectAppbar extends StatefulWidget {
  const ProjectAppbar({Key? key}) : super(key: key);

  @override
  State<ProjectAppbar> createState() => _ProjectAppbarState();
}

class _ProjectAppbarState extends State<ProjectAppbar> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
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
              "Projects",
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
