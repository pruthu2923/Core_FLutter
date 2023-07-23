
import 'package:flutter/material.dart';
import 'package:resume_app/utils/backbutton.dart';
import 'package:resume_app/utils/colors.dart';
import 'package:resume_app/utils/myroutes.dart';

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
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
              color: MyBg,
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    spreadRadius: 20,
                    offset: Offset(5, 5),
                    blurRadius: 20,
                  ),
                ]
              ),
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: h*0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.all(w*0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyBackButton(),
                        SizedBox(
                          width: w*0.07,
                        ),
                        const Text(
                          "Resume WorkSpace",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Build Options",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: MyRoutes.buildOptions
                      .map(
                        (e) => Padding(
                      padding: const EdgeInsetsDirectional.only(
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
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () => Navigator.of(context)
                                    .pushNamed(e['name']),
                                icon: const Icon(Icons.arrow_forward_ios),
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
          ),
        ],
      ),
    );
  }
}
