import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Launch Button",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 200,
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(200),
              shape: BoxShape.circle,
                  color: Colors.black,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  color: Colors.green,
                  blurRadius: 20,
                )
              ],
            ),
            child: Text("Go",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}