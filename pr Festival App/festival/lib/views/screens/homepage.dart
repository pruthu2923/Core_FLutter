import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../utils/Universal.dart';
import '../../utils/colors.dart';
import '../../utils/festival_data.dart';
import '../../utils/routes_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool drawervisibility = false;
  bool propertyvisibility = true;
  String countrySelection = "India";
  bool festivalnonvisibility = true;
  bool fabvisibility = false;
  bool listorgrid = true;

  // int counter = 1;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80))),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                (drawervisibility) ? countrySelection : "No Country Selected",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            preferredSize: Size.fromHeight(100)),
        title: Text(
          "HomePage",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: MyBg,
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  listorgrid = !listorgrid;
                });
              },
              icon: Icon(
                  (listorgrid) ? Icons.grid_view_rounded : Icons.filter_list),
            ),
          ),
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
                                  Universal.profileImage = File(file!.path);
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
                                    (Universal.profileImage == null)
                                        ? null
                                        : FileImage(Universal.profileImage!),
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
                        festivalnonvisibility = false;
                        fabvisibility = true;
                      });
                    },
                    child: Text(
                      "Show Countries",
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
                          ...allCountries.map(
                            (e) => Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      countrySelection = e;
                                      Universal.countryName = e;
                                      // counter = 1;
                                    });
                                  },
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                        color: countrySelection == e
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
            SingleChildScrollView(
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                children: List.generate(
                  allFestivals.length,
                  (index) => countrySelection == allFestivals[index].country
                      ? StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  MyRoutes.detailpage,
                                  arguments: allFestivals[index]);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        // spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(3, 3),
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            '${allFestivals[index].image}'),
                                        fit: BoxFit.fill,
                                        opacity: 0.8)),
                                padding: EdgeInsets.all(10),
                                child: Center(
                                  child: Text(
                                    allFestivals[index].festival,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ),
              ),
            ),
            Visibility(
              visible: festivalnonvisibility,
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
                          "Select Country First",
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
      //               Text("Reached Maximum Limit of festivals for This country"),
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
