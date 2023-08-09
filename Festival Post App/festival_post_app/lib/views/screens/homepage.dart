import 'package:festival_post_app/utils/fest_data.dart';
import 'package:festival_post_app/utils/ui_helpers/myroutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ui_helpers/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool listicon = true;

  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    listicon = !listicon;
                  });
                },
                icon: Icon((listicon)
                    ? CupertinoIcons.rectangle_grid_1x2_fill
                    : CupertinoIcons.rectangle_grid_2x2_fill)),
          )
        ],
        // leading: Icon(Icons.last_page),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80))),
        bottom: PreferredSize(
            child: SizedBox(), preferredSize: Size.fromHeight(100)),
        title: Text("Welcome"),
        centerTitle: true,
        // backgroundColor: Colors.redAccent,
        backgroundColor: MyBg,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(),
      body: Padding(
        padding: EdgeInsets.all(15),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text(
        //           "Select Your Country",
        //           style: TextStyle(
        //               color: Colors.black,
        //               fontSize: 22,
        //               fontWeight: FontWeight.bold),
        //         ),
        //       ],
        //     ),
        //
        //   ],
        // ),
        child: (listicon)
            ? GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: allCountries.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(MyRoutes.countrydetailpage,
                        arguments: allCountries[index]);
                  },
                  child: Card(
                    color: (index == 1 ||
                            index == 2 ||
                            index == 5 ||
                            index == 6 ||
                            index == 9)
                        ? Colors.yellowAccent
                        : MyBg,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          allCountries[index],
                          style: TextStyle(
                              color: (index == 1 ||
                                      index == 2 ||
                                      index == 5 ||
                                      index == 6 ||
                                      index == 9)
                                  ? MyBg
                                  : Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed(MyRoutes.countrydetailpage,arguments: allCountries[index]);
                  },
                  child: Container(
                    // color: (index % 2 == 1) ? Colors.yellowAccent : MyBg,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          allCountries[index],
                          style: TextStyle(
                            color: (index % 2 == 1) ? MyBg : MyBg,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
              ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
