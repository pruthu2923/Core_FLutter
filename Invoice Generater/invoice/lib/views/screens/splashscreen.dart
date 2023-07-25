
import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/myroutes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  FlutterLogoStyle style = FlutterLogoStyle.markOnly;
  changePage() {
    Timer.periodic(const Duration(seconds: 3), (tick) {
      Navigator.of(context).pushReplacementNamed(MyRoutes.homepage);
      tick.cancel();
    });
  }

  @override
  void initState() {
    super.initState();
    changePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          color: Color(0xff02323C),
          child: Column(
            children: [
              Spacer(),
              Image.asset('assets/icon/Inbox cleanup.gif'),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
