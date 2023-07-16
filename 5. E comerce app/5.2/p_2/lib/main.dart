import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dark Shadow Button",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          centerTitle: true,
        backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
             boxShadow: [
               BoxShadow(
                 color: Colors.red,
                 blurRadius: 30,
               ),
             ],
            ),
            child: Center(
              child: Text("Tap",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
              ),
            ),
          ),
        ),backgroundColor: Colors.black,
      ),
    ),
  );
  
}
