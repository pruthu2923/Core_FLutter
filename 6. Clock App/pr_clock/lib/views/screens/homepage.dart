import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sec = 0;
  int min = 0;
  int hour = 0;
  bool stop = false;
  StartTimer() {
    if (stop == false) {
      Future.delayed(Duration(seconds: 1), () {
        sec = DateTime.now().second;
        min = DateTime.now().minute;
        hour = DateTime.now().hour;
        StartTimer();
        setState(() {});
      });
    }
  }

  StopTimer() {
    if (stop == true) {
      sec = DateTime.now().second;
      min = DateTime.now().minute;
      hour = DateTime.now().hour;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Clock App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        width: 350,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: Text("Clocker Ft. Pruthu"),
                accountEmail: Text("pruthuclock@gmail.com"))
          ],
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ...List.generate(
              60,
              (index) => Transform.rotate(
                angle: (index * pi * 2) / 60,
                child: Divider(
                  color: (index % 5 == 0) ? Colors.tealAccent : Colors.white,
                  thickness: (index % 5 == 0) ? 4 : 2,
                  endIndent: (index % 5 == 0) ? w * 0.89 : w * 0.91,
                  indent: 20,
                ),
              ),
            ),
            Transform.rotate(
              angle: pi / 2,
              child: Transform.rotate(
                angle: sec * (pi * 2) / 60,
                child: Divider(
                  color: Colors.red,
                  thickness: 3,
                  indent: 50,
                  endIndent: w / 2,
                ),
              ),
            ),
            Transform.rotate(
              angle: pi / 2,
              child: Transform.rotate(
                angle: min * (pi * 2) / 60,
                child: Divider(
                  color: Colors.red,
                  thickness: 3,
                  indent: 70,
                  endIndent: w / 2,
                ),
              ),
            ),
            Transform.rotate(
              angle: pi / 2,
              child: Transform.rotate(
                angle: hour * (pi * 2) / 12,
                child: Divider(
                  color: Colors.red,
                  thickness: 3,
                  indent: 80,
                  endIndent: w / 2,
                ),
              ),
            ),
            CircleAvatar(
              foregroundColor: Colors.red,
              backgroundColor: Colors.white,
              maxRadius: 12,
              minRadius: 5,
              child: CircleAvatar(
                radius: 9,
                backgroundColor: Colors.black,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              stop = false;
              StartTimer();
            },
            child: Icon(
              Icons.play_arrow_rounded,
              weight: 30,
            ),
            backgroundColor: Colors.tealAccent,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              stop = true;
              StopTimer();
            },
            child: Icon(
              Icons.stop,
              weight: 10,
            ),
            backgroundColor: Colors.tealAccent,
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
