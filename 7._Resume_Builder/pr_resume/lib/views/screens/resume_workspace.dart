
import 'package:flutter/material.dart';
import 'package:pr_resume/utils/backbutton.dart';
import 'package:pr_resume/utils/colors.dart';
import 'package:pr_resume/utils/myroutes.dart';

class ResumeWorkSpace extends StatefulWidget {
  const ResumeWorkSpace({super.key});
  @override
  State<ResumeWorkSpace> createState() => _ResumeWorkSpaceState();
}
class _ResumeWorkSpaceState extends State<ResumeWorkSpace> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: MyBg,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                start: 20,
                end: 30,
                top: 30,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      MyBackButton(),
                      SizedBox(
                        width: 70,
                      ),
                      Center(
                        child: Text(
                          "Resume WorkSpace",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    "Build Options",
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
            child: SingleChildScrollView(
              child: Column(
                children: MyRoutes.buildOptions
                    .map(
                      (e) => Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: 13,
                          top: 13,
                          end: 13,
                        ),
                        child: Card(
                          color: MyBg,
                          borderOnForeground: true,
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: Row(
                              children: [
                                Image.asset(
                                  e['icon'],
                                  height: 35,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  e['title'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed(e['name']),
                                  icon: Icon(Icons.arrow_forward_ios),
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
