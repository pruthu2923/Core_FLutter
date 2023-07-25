import 'package:flutter/material.dart';
import 'package:invoice/utils/colors.dart';
import 'package:invoice/utils/myroutes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HomePage",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: MyBg,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Invoice Generater",
                    style: TextStyle(
                      color: MyBg,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Invoices",
                    style: TextStyle(
                      color: MyBg,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: MyBg,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.08,
                  ),
                  Icon(
                    Icons.newspaper_sharp,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    height: h * 0.06,
                  ),
                  Text(
                    "Click On + For Create New Invoice",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MyRoutes.companypage);
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Colors.white,
        foregroundColor: MyBg,
      ),
    );
  }
}
