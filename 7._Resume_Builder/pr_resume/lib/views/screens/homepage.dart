import 'package:flutter/material.dart';
import 'package:pr_resume/utils/backbutton.dart';
import 'package:pr_resume/utils/myroutes.dart';
import 'package:pr_resume/views/screens/resume_workspace.dart';

import '../../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: MyBg,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                start: 50,
                end: 30,
                top: 30,
              ),
              child: Column(
                children: [
                  Text(
                    "Resume Builder",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
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
          Container(
            width: double.infinity,
            color: Colors.white,
            height: 700,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                top: 70,
              ),
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.auto_graph_outlined,
                      size: 50,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
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
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MyRoutes.resume);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          weight: 20,
          size: 30,
          grade: 10,
        ),
        backgroundColor: MyBg,
      ),
    );
  }
}
