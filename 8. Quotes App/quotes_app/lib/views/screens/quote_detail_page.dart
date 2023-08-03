import 'package:flutter/material.dart';
import 'package:quotes_app/utils/frames/1st.dart';
import 'package:quotes_app/utils/modal_quotes.dart';
import 'package:quotes_app/utils/routes_utils.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color? selectedcolor;
  bool disabledcolor = true;
  bool frameclrvisibility = false;
  bool propertyvisibility = false;
  Color framecolor = Colors.black;
  bool disableframe = true;
  double topstart = 60;
  double topend = 60;
  double bottomstart = 60;
  double bottomend = 60;
  bool frameno1 = false;
  bool frameno2 = true;
  bool frameno3 = false;
  bool frameno4 = false;
  bool frameno5 = false;
  bool frameno6 = false;
  bool frameno7 = false;
  // double radius;
  double slider = 1;
  int fontsize = 14;
  List<Color> colorlist = [Colors.white, Colors.black, ...Colors.primaries];
  @override
  Widget build(BuildContext context) {
    Quote getquote = ModalRoute.of(context)!.settings.arguments as Quote;
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote's Detail Page"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyRoutes.framepage);
              },
              icon: Icon(Icons.forward))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(30),
                  height: h * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                       color: framecolor ,
                    ),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(topend),topLeft: Radius.circular(topstart),bottomLeft: Radius.circular(bottomstart),bottomRight: Radius.circular(bottomend)),
                    // boxShadow: [
                    //   BoxShadow(
                    //     offset: Offset(5, 5),
                    //     blurRadius: 4,
                    //   ),
                    // ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        getquote.quote,
                        style: TextStyle(
                          color: (selectedcolor == null) ? null : selectedcolor,
                          fontSize: fontsize.toDouble(),
                          fontWeight: FontWeight.values[slider.toInt()],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("- ${getquote.author}",
                            style: TextStyle(
                              color: (selectedcolor == null) ? null : selectedcolor,
                              fontSize: fontsize.toDouble(),
                              fontWeight: FontWeight.values[slider.toInt()],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Quotes Properties",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            propertyvisibility = !propertyvisibility;
                          });
                        },
                        style: ButtonStyle(
                          splashFactory:
                              InkSparkle.constantTurbulenceSeedSplashFactory,
                        ),
                        child: Text(
                          (propertyvisibility == true) ? "Hide" : "Show",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: propertyvisibility,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(start: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      disabledcolor = true;
                                      selectedcolor = null;
                                    });
                                  },
                                  child: Container(
                                    height: (disabledcolor == true)
                                        ? h * 0.06
                                        : h * 0.04,
                                    width: (disabledcolor == true)
                                        ? w * 0.12
                                        : w * 0.09,
                                    color: Colors.grey.shade800,
                                    child: Icon(
                                      Icons.location_disabled,
                                      color: Colors.redAccent,
                                      size: (disabledcolor == true) ? 30 : 20,
                                    ),
                                  ),
                                ),
                                ...colorlist.map((e) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          disabledcolor = false;
                                          selectedcolor = e;
                                        });
                                      },
                                      child: Container(
                                        height: (selectedcolor == e)
                                            ? h * 0.06
                                            : h * 0.04,
                                        width: (selectedcolor == e)
                                            ? w * 0.12
                                            : w * 0.09,
                                        color: e,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Text(
                            "Font Boldness",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: h * 0.00,
                          ),
                          Row(
                            children: [
                              Text("${slider.toInt()}"),
                              Expanded(
                                child: Slider(
                                  min: 0,
                                  max: 8,
                                  divisions: 9,
                                  value: slider,
                                  onChanged: (val) {
                                    setState(
                                      () {
                                        slider = val;
                                      },
                                    );
                                  },
                                  activeColor:
                                      Colors.primaries[slider.toInt() % 18 + 8],
                                  inactiveColor: Colors.white,
                                  thumbColor: Colors.white,
                                  label: "Font Boldness",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Text(
                            "Font Size",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: h * 0.00,
                          ),
                          Row(
                            children: [
                              Text("${fontsize}"),
                              Expanded(
                                child: Slider(
                                  // focusNode: FocusNode(debugLabel: "done"),
                                  min: 10,
                                  max: 15,
                                  divisions: 5,
                                  value: fontsize.toDouble(),
                                  onChanged: (val) {
                                    setState(() {
                                      fontsize = val.toInt();
                                    });
                                  },
                                  activeColor:
                                      Colors.primaries[(fontsize + 5) % 18],
                                  inactiveColor: Colors.white,
                                  thumbColor: Colors.black,
                                  label: "Font Size",
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Edit Frame",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              IconButton(onPressed: (){
                                setState(() {
                                  frameclrvisibility = true;
                                });
                              }, icon: Icon(Icons.color_lens_outlined),)
                            ],
                          ),
                          Visibility(
                              visible: frameclrvisibility,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          disableframe = true;
                                          framecolor = Colors.black;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: (disableframe==true) ? Border.all(width: 2) : null,
                                            borderRadius: BorderRadius.circular(30)
                                          ),
                                          child: Icon(Icons.stop_circle_outlined,size: 30,)),
                                      ),
                                    ),
                                    ...colorlist.map((e) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          disableframe = false;
                                          framecolor = e;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: (framecolor == e) ? Border.all(width: 2) : null,
                                            borderRadius: BorderRadius.circular(30)
                                          ),
                                          child: Container(
                                            height:  h * 0.03,
                                            width:  w * 0.06,
                                            decoration: BoxDecoration(
                                            color: e,
                                              borderRadius: BorderRadius.circular(40),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                                  ],
                                ),
                              ),),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      topstart = 60;
                                      topend = 60;
                                      bottomstart = 0;
                                      bottomend = 0;
                                      frameno1 = true;
                                      frameno2 = frameno7 = frameno6 = frameno5 = frameno4 = frameno3 = false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Center(child: (frameno1 == true) ? Icon(Icons.done): null),
                                      height: h * 0.1,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadiusDirectional.only(
                                            topEnd: Radius.circular(20),
                                            topStart: Radius.circular(20)),
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      topstart = 60;
                                      topend = 60;
                                      bottomstart = 60;
                                      bottomend = 60;
                                      frameno2 = true;
                                     frameno1 = frameno3 = frameno4 = frameno5 = frameno6 = frameno7 = false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Center(child: (frameno2 == true) ? Icon(Icons.done): null),
                                      height: h * 0.1,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Colors.black, width: 2)),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      topstart = 0;
                                      topend = 0;
                                      bottomstart = 60;
                                      bottomend = 60;
                                      frameno3 = true;
                                      frameno1 = frameno2 = frameno4 = frameno5 = frameno6 = frameno7 = false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Center(child: (frameno3 == true) ? Icon(Icons.done): null),
                                      height: h * 0.1,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadiusDirectional.only(
                                            bottomEnd: Radius.circular(20),
                                            bottomStart:
                                            Radius.circular(20)),
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      topstart = 60;
                                      topend = 0;
                                      bottomstart = 0;
                                      bottomend = 60;
                                      frameno4 = true;
                                      frameno1 = frameno3 = frameno2 = frameno5 = frameno6 = frameno7 = false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Center(child: (frameno4 == true) ? Icon(Icons.done): null),
                                      height: h * 0.1,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                          topStart: Radius.circular(20),
                                          bottomEnd: Radius.circular(20),
                                        ),
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      topstart = 60;
                                      topend = 0;
                                      bottomstart = 60;
                                      bottomend = 0;
                                      frameno5 = true;
                                      frameno1 = frameno3 = frameno4 = frameno2 = frameno6 = frameno7 = false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Center(child: (frameno5 == true) ? Icon(Icons.done): null),
                                      height: h * 0.1,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadiusDirectional.only(
                                            bottomStart: Radius.circular(20),
                                            topStart: Radius.circular(20)),
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      topstart = 0;
                                      topend = 60;
                                      bottomstart = 60;
                                      bottomend = 0;
                                      frameno6 = true;
                                      frameno1 = frameno3 = frameno4 = frameno5 = frameno2 = frameno7 = false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Center(child: (frameno6 == true) ? Icon(Icons.done): null),
                                      height: h * 0.1,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                bottomStart:
                                                    Radius.circular(20),
                                                topEnd: Radius.circular(20)),
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      topstart = 0;
                                      topend = 60;
                                      bottomstart = 0;
                                      bottomend = 60;
                                      frameno7 = true;
                                      frameno1 = frameno3 = frameno4 = frameno5 = frameno6 = frameno2 = false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Center(child: (frameno7 == true) ? Icon(Icons.done): null),
                                      height: h * 0.1,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadiusDirectional.only(
                                            topEnd: Radius.circular(20),
                                            bottomEnd: Radius.circular(20)),
                                        border: Border.all(
                                            color: Colors.black, width: 2),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
