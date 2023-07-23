import 'package:flutter/material.dart';

import '../backbutton.dart';
import '../colors.dart';

class TechnicalAppbar extends StatefulWidget {
  const TechnicalAppbar({Key? key}) : super(key: key);

  @override
  State<TechnicalAppbar> createState() => _TechnicalAppbarState();
}

class _TechnicalAppbarState extends State<TechnicalAppbar> {
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
              width: w*0.18,
            ),
            Text(
              "Technical Skills",
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
