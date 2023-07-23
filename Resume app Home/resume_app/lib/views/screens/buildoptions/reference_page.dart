import 'package:flutter/material.dart';
import 'package:resume_app/utils/Appbars/referencepage_appbar.dart';
import 'package:resume_app/utils/Appbars/Declaration_appbar.dart';

class ReferencePage extends StatefulWidget {
  const ReferencePage({Key? key}) : super(key: key);

  @override
  State<ReferencePage> createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReferenceAppbar(),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Reference Name",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: h * 0.02),
                    TextFormField(
                      initialValue: "Suresh Shah",
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Designation",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: h * 0.02),
                    TextFormField(
                      initialValue: "Marketing Manager",
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Organization/Institute",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: h * 0.02),
                    TextFormField(
                      initialValue: "Green Energy Pvt. Ltd",
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
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
