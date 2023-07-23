import 'package:flutter/material.dart';

import '../backbutton.dart';
import '../colors.dart';

class PersonalAppbar extends StatefulWidget {
  const PersonalAppbar({Key? key}) : super(key: key);

  @override
  State<PersonalAppbar> createState() => _PersonalAppbarState();
}

class _PersonalAppbarState extends State<PersonalAppbar> {
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
              width: w*0.17,
            ),
            Text(
              "Personal Details",
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
