import 'package:flutter/material.dart';
import 'package:resume_app/utils/Appbars/projectbar.dart';
import 'package:resume_app/utils/colors.dart';
import 'package:resume_app/utils/universal.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  List Technologies = ["C Programming", "C++", "Flutter"];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProjectAppbar(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                color: MyBg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project Title",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Resume Builder App",
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.yellowAccent,
                            width: 2,
                          )),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Technologies",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    ...Technologies.map((e) => CheckboxListTile(
                      title: Text(e,style: TextStyle(
                        color: Colors.white,
                      ),),
                        controlAffinity: ListTileControlAffinity.leading,
                        checkColor: Colors.yellowAccent,
                        activeColor: MyBg,
                        selectedTileColor: MyBg,
                        tileColor: MyBg,
                        checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        value: Universal.Technologies.contains(e),
                        onChanged: (val) {
                          setState(() {
                            if(Universal.Technologies.contains(e))
                              {
                                Universal.Technologies.remove(e);
                              }
                            else
                              {
                                Universal.Technologies.add(e);
                              }
                          });
                        })).toList(),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Roles",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      maxLines: 2,
                      decoration: InputDecoration(
                          hintText: "Organize Team Members , Code Analysis",
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.yellowAccent,
                            width: 2,
                          )),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Technologies",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "No. Programmers",
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.yellowAccent,
                            width: 2,
                          )),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Project Description",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(
                          hintText: "Enter Your Project Description",
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.yellowAccent,
                            width: 2,
                          )),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
