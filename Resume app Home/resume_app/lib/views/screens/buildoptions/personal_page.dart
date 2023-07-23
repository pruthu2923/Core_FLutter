import 'package:flutter/material.dart';
import 'dart:io';
import 'package:resume_app/utils/Appbars/personal_appbar.dart';
import 'package:resume_app/utils/colors.dart';
import 'package:resume_app/utils/universal.dart';

class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  List Languages = ["English", "Gujrati", "Hindi"];
  String Marriage_Status = 'false';
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PersonalAppbar(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    color: MyBg, borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(25),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DOB",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "DD/MM/YYYY",
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.yellowAccent,
                            width: 1.5,
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Marital Status",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    RadioListTile(
                        activeColor: Colors.white,
                        title: Text(
                          "Single",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: "Single",
                        groupValue: Marriage_Status,
                        onChanged: (val) {
                          setState(() {
                            Marriage_Status = val!;
                          });
                        }),
                    RadioListTile(
                        activeColor: Colors.redAccent,
                        title: Text(
                          "Married",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: "Married",
                        groupValue: Marriage_Status,
                        onChanged: (val) {
                          setState(() {
                            Marriage_Status = val!;
                            // if()
                            //   {
                            //
                            //   }
                            // else
                            //   {
                            //
                            //   }
                          });
                        }),
                    SizedBox(
                      height: h * 0.001,
                    ),
                    Text(
                      "Langugae Known",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    //
                    ...Languages.map(
                      (e) => CheckboxListTile(
                        title: Text(
                          e,
                          style: TextStyle(color: Colors.white),
                        ),
                        activeColor: Colors.yellowAccent,
                        controlAffinity: ListTileControlAffinity.leading,
                        checkColor: Colors.black,
                        value: Universal.Langugaes.contains(e),
                        onChanged: (val) {
                          setState(() {
                            if (Universal.Langugaes.contains(e)) {
                              Universal.Langugaes.remove(e);
                            } else {
                              Universal.Langugaes.add(e);
                            }
                            print(Universal.Langugaes);
                          });
                        },
                      ),
                    ).toList(),
                    Text(
                      "Nationality",
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
                          hintText: "Indian",
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: 18),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.yellowAccent,
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Save",
                            style: TextStyle(
                                color: MyBg,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
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
