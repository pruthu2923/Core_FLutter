import 'package:flutter/material.dart';
import 'package:resume_app/utils/backbutton.dart';
import 'package:resume_app/utils/myroutes.dart';
import 'package:resume_app/views/screens/resume_workspace.dart';

import '../../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s =  MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 200,
              color: MyBg,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: Column(
                    children: const [
                      Text(
                        "Resume Builder",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "RESUMES",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 50,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                   Image.asset(
                     'assets/icons/open-cardboard-box.png',
                     height: 80,
                   ),
                      SizedBox(
                        height: h*0.05,
                      ),
                      const Text(
                        "No Resume + Create New Resume",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MyRoutes.resume);
        },
        backgroundColor: MyBg,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          weight: 20,
          size: 30,
          grade: 10,
        ),
      ),
    );
  }
}
