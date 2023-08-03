import 'package:flutter/material.dart';

class frame1 extends StatelessWidget {
  const frame1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
     double h = s.height;
     double w = s.width;
    return  Container(
      height: h*0.1,
      width: w*0.2,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(left: BorderSide(color: Colors.black,width: 10),right:BorderSide(color: Colors.black,width: 10) )
      ),
    );
  }
}
