import 'package:flutter/material.dart';
import 'package:resume_app/utils/Appbars/carrier_objectives.dart';
import 'package:resume_app/utils/colors.dart';

class CarrierObjectivePage extends StatefulWidget {
  const CarrierObjectivePage({Key? key}) : super(key: key);

  @override
  State<CarrierObjectivePage> createState() => _CarrierObjectivePageState();
}

class _CarrierObjectivePageState extends State<CarrierObjectivePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarrierAppBar(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: MyBg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Carrier Objective",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    TextFormField(
                      maxLines: 6,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                          hintText: " Description",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.7)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            width: 2,
                            color: Colors.yellowAccent,
                          )),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: MyBg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Designation (Experienced Candidate)",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    TextFormField(
                      initialValue: "Software Engineer",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                          hintText: "YourJob",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.7)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            width: 2,
                            color: Colors.yellowAccent,
                          )),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )),
                    )
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
