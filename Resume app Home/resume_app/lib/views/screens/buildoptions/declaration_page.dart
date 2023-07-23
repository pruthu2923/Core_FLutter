import 'package:flutter/material.dart';
import 'package:resume_app/utils/Appbars/Declaration_appbar.dart';
import 'package:resume_app/utils/colors.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({Key? key}) : super(key: key);

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Declaration",
                        ),
                        Spacer(),
                        Switch(
                            value: value,
                            onChanged: (val) {
                              setState(() {
                                value = val;
                              });
                            })
                      ],
                    ),
                    Visibility(
                      visible: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: h * 0.001,
                          ),
                          Image.asset(
                            "assets/icons/target.png",
                            height: h * 0.075,
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Description",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: h * 0.03,
                          ),
                          Divider(),
                          SizedBox(
                            height: h * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Date",
                                  ),
                                  SizedBox(
                                    height: h * 0.06,
                                  ),
                                  Container(
                                    width: w * 0.35,
                                    height: h * 0.05,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "DD/MM/YYYY",
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 1,
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Place",
                                  ),
                                  SizedBox(
                                    height: h * 0.06,
                                  ),
                                  Container(
                                    width: w * 0.35,
                                    height: h * 0.05,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "Eg. Surat",
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 1,
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h*0.02,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  MyBg,
                                ),
                              ),
                              
                              child: Text(
                                "Save",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
