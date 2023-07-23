import 'package:flutter/material.dart';
import 'package:resume_app/utils/backbutton.dart';
import 'package:resume_app/utils/colors.dart';

class ReferenceAppbar extends StatefulWidget {
  const ReferenceAppbar({Key? key}) : super(key: key);

  @override
  State<ReferenceAppbar> createState() => _ReferenceAppbarState();
}

class _ReferenceAppbarState extends State<ReferenceAppbar> {
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
              "References",
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
