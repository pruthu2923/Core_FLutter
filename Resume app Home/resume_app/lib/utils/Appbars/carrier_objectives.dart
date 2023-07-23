import 'package:flutter/material.dart';
import '../backbutton.dart';
import '../colors.dart';

class CarrierAppBar extends StatefulWidget {
  const CarrierAppBar({Key? key}) : super(key: key);

  @override
  State<CarrierAppBar> createState() => _CarrierAppBarState();
}

class _CarrierAppBarState extends State<CarrierAppBar> {
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
              "Carrier Objective",
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
