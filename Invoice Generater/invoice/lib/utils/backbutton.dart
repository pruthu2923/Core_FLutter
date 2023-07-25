

import 'package:flutter/material.dart';

class MyBackButton extends StatefulWidget {
  const MyBackButton({super.key});

  @override
  State<MyBackButton> createState() => _MyBackButtonState();
}

class _MyBackButtonState extends State<MyBackButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ));
  }
}
