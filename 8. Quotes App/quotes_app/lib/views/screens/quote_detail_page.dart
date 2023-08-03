import 'package:flutter/material.dart';
import 'package:quotes_app/utils/modal_quotes.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color? selectedcolor;
  bool disabledcolor = true;
  bool propertyvisibility = false;
  double slider = 1;
  int fontsize = 14;
  List<Color> colorlist = [Colors.white, Colors.black, ...Colors.primaries];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    // Quote getquote = ModalRoute.of(context)!.settings.arguments.toString() as Quote;
    // String quote = getquote.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("Quote's Detail Page"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: h * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 4,
                      )
                    ]),
                // child: Text(quote),
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
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
                      (propertyvisibility == true) ? "Done" : "Edit",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
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
                              height:
                                  (disabledcolor == true) ? h * 0.06 : h * 0.04,
                              width:
                                  (disabledcolor == true) ? w * 0.12 : w * 0.09,
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
                            max: 9,
                            divisions: 9,
                            value: slider,
                            onChanged: (val) {
                              setState(() {
                                slider = val;
                              });
                            },
                            activeColor: Colors.primaries[slider.toInt()%18+8],
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
                            min: 13,
                            max: 23,
                            divisions: 10,
                            value: fontsize.toDouble(),
                            onChanged: (val) {
                              setState(() {
                                fontsize = val.toInt();
                              });
                            },
                            activeColor: Colors.primaries[(fontsize+5)%18],
                            inactiveColor: Colors.white,
                            thumbColor: Colors.black,
                            label: "Font Size",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
