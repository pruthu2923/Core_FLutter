import 'package:flutter/material.dart';
import 'package:resume_app/utils/Appbars/education_appbar.dart';
import 'package:resume_app/utils/colors.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EducationAppbar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: MyBg, borderRadius: BorderRadius.circular(7)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
      // => 1st Part
                    Text(
                      "Course/Degree",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: h*0.01,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                        labelText: "Your Degree",
                        hintText: "Ex. B. Tech Information Technology",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.4)
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.yellowAccent
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:BorderSide(
                            color: Colors.white,
                            width: 1.5,
                          ),
                        ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3))),
                    ),
                    SizedBox(
                      height: h*0.02,
                    ),
      // => 2nd Part
                    Text(
                      "School/College/Institute",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: h*0.01,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                        labelText: "Education Place",
                        hintText: "Ex. ABC University",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.4)
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.yellowAccent
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:BorderSide(
                            color: Colors.white,
                            width: 1.5,
                          ),
                        ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3))),
                    ),
                    SizedBox(
                      height: h*0.02,
                    ),
      // => 3rd Part
                    Text(
                      "School/College/Institute",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: h*0.01,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                        labelText: "Educational Achievement",
                        hintText: "Ex. 99% (or) 9.9 CGPA",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.4)
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.yellowAccent
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:BorderSide(
                            color: Colors.white,
                            width: 1.5,
                          ),
                        ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3))),
                    ),
                    SizedBox(
                      height: h*0.02,
                    ),
      // => 4th Part
                    Text(
                      "Year Of Pass",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: h*0.01,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                        labelText: "Passing Year",
                        hintText: "Ex. 2023",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.4)
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.yellowAccent
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:BorderSide(
                            color: Colors.white,
                            width: 1.5,
                          ),
                        ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3))),
                    ),
                    SizedBox(
                      height: h*0.02,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
