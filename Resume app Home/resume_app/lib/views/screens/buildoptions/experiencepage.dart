import 'package:flutter/material.dart';
import 'package:resume_app/utils/Appbars/experienceappbar.dart';
import 'package:resume_app/utils/colors.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  String EmployeeStatus = "false";
  bool visible = false;
  bool notvisible = true;
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExperienceAppbar(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(18),
                width: double.infinity,
                color: MyBg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Company Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "New Enterprise, San Francisco",
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.4)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.5)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.yellowAccent, width: 2)),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.029,
                    ),
                    Text(
                      "School/College/Institute",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Quality Test Engineer",
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.4)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.5)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.yellowAccent, width: 2)),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.029,
                    ),
                    Text(
                      "Roles (optional)",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                          hintText:
                              "Working with team members to come up with new concepts and product analysis",
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              letterSpacing: 0.9),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.5)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.yellowAccent, width: 2)),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.029,
                    ),
                    Text(
                      "Employed Status",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    RadioListTile(
                        title: Text(
                          "Previously Employed",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: "Previous",
                        groupValue: EmployeeStatus,
                        onChanged: (val) {
                          setState(() {
                            visible = true;
                            notvisible = false;
                            EmployeeStatus = val!;
                          });
                        }),
                    RadioListTile(
                        title: Text(
                          "Currently Employed",
                          style: TextStyle(color: Colors.white),
                        ),
                        activeColor: Colors.white,
                        selectedTileColor: Colors.yellowAccent,
                        value: "Current",
                        groupValue: EmployeeStatus,
                        onChanged: (val) {
                          setState(() {
                            visible = false;
                            notvisible = true;
                            EmployeeStatus = val!;
                          });
                        }),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Divider(),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Text(
                                "Date Joined",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                height: h * 0.004,
                              ),
                              Container(
                                width: w * 0.3,
                                height: h * 0.05,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "DD/MM/YYYY",
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 0.4,
                                        fontSize: 14,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.5,
                                      )),
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: w*0.1,
                        ),
                        Visibility(
                          visible: visible,
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Text(
                                  "Date Exit",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: h * 0.004,
                                ),
                                Container(
                                  width: w * 0.3,
                                  height: h * 0.05,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "DD/MM/YYYY",
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 0.4,
                                          fontSize: 14,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                          color: Colors.white,
                                          width: 1.5,
                                        )),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: h*0.03,),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: MyBg,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,),
                        ),
                      ),
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
