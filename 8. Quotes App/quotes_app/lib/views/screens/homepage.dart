import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/utils/Universal.dart';
import 'package:quotes_app/utils/colors.dart';
import 'package:quotes_app/utils/quotes.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool drawervisibility = false;
  bool propertyvisibility = true;
  String CategorySelection = "Art";
  bool quotenonvisibility = true;
  bool fabvisibility = false;
  // int counter = 1;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HomePage",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: MyBg,
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.grid_view_rounded,
            ),
          )
        ],
        // centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: (drawervisibility) ? MyBg : Colors.white,
        child: Column(
          children: [
            // UserAccountsDrawerHeader(
            //   arrowColor: Colors.red,
            //   decoration: BoxDecoration(color: Colors.red),
            //   currentAccountPicture: CircleAvatar(),
            //   accountName: Text(
            //     "Pruthu",
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 18,
            //         fontWeight: FontWeight.bold),
            //   ),
            //   accountEmail: Text(
            //     "pruthuff180@gmail.com",
            //     style: TextStyle(color: Colors.white, fontSize: 15),
            //   ),
            // ),
            Container(
              height: h * 0.25,
              width: double.infinity,
              color: MyBg,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Ink(
                          child: InkWell(
                            splashColor: Colors.black,
                            focusColor: Colors.black,
                            onTap: () async {
                              ImagePicker picker = ImagePicker();
                              XFile? file;
                              file = await picker.pickImage(
                                  source: ImageSource.camera);
                              if (file != null) {
                                setState(() {
                                  Universal.ProfileImage = File(file!.path);
                                });
                              }
                            },
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsloDZ5O0zSh9T5dPrHvIaWE7rIAGpBS43WQ&usqp=CAU'),
                                foregroundImage:
                                    (Universal.ProfileImage == null)
                                        ? null
                                        : FileImage(Universal.ProfileImage!),
                                radius: 35,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(1),
                            child: Text(
                              "Pruthu",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 1),
                            child: Text(
                              "pruthuff180@gmail.com",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 2,
            ),
            Stack(
              alignment: (drawervisibility)
                  ? AlignmentDirectional.topCenter
                  : AlignmentDirectional.center,
              children: [
                Visibility(
                  visible: propertyvisibility,
                  child: Center(
                      child: TextButton(
                    onPressed: () {
                      setState(() {
                        drawervisibility = true;
                        propertyvisibility = false;
                        quotenonvisibility = false;
                        fabvisibility = true;
                      });
                    },
                    child: Text(
                      "Show Categories",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Visibility(
                    visible: drawervisibility,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: h * 0.02,
                          ),
                          ...allCategories.map(
                            (e) => Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      CategorySelection = e;
                                      Universal.CategoryName = e;
                                      // counter = 1;
                                    });
                                  },
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                        color: CategorySelection == e
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.3),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) =>
                  (allQuotes[index].category == Universal.CategoryName)
                      ? Card(
                          child: ListTile(
                            leading: Icon(CupertinoIcons.profile_circled),
                            title: Text(allQuotes[index].quote),
                            subtitle: Text(allQuotes[index].category),
                            isThreeLine: true,
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        )
                      : Container(),
            ),
            Visibility(
              visible: quotenonvisibility,
              child: Center(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.swipe_right,
                          size: 70,
                        ),
                        Spacer(),
                        Text(
                          "Select Category First",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: Visibility(
      //   visible: fabvisibility,
      //   child: FloatingActionButton(
      //     onPressed: () {
      //       setState(() {
      //         if (counter <= 10) {
      //               counter++;
      //         }
      //         else {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //             SnackBar(
      //               content:
      //               Text("Reached Maximum Limit of Quotes for This Category"),
      //               duration: Duration(seconds: 3),
      //             ),
      //         );
      //         }
      //       });
      //     },
      //     child: Icon(Icons.add),
      //   ),
      // ),
    );
  }
}
