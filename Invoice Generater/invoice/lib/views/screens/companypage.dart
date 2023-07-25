import 'package:flutter/material.dart';
import 'package:invoice/utils/Universal.dart';
import 'package:invoice/utils/backbutton.dart';
import 'package:invoice/utils/colors.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  List itemprizes = ["","","","","","",""];
  List listofitems = [
    "Chana",
    "Moong",
    "Wheat",
    "Rice",
    "MasoorDal",
    "TuwarDal",
    "ChanaDal"
  ];
  @override
  bool SetPrize = false;

  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Company Details",
          style:
              TextStyle(color: MyBg, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: MyBackButton(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: MyBg,
              width: double.infinity,
              height: h * 0.3,
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        // padding: EdgeInsets.all(40),
                        width: w * 0.42,
                        height: h * 0.21,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(200)),
                      ),
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.bottomRight,
                        width: w * 0.30,
                        height: h * 0.15,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(200)),
                        child: FloatingActionButton.small(
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          backgroundColor: MyBg,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                color: MyBg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: MyFg, width: 2)),
                          border: UnderlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Since",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: MyFg, width: 2)),
                          border: UnderlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Product Type",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: MyFg, width: 2)),
                          border: UnderlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Address",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: MyFg, width: 2)),
                          border: UnderlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Shop Time",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: MyFg, width: 2)),
                          border: UnderlineInputBorder()),
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            SetPrize = true;
                          });
                        },
                        child: Text(
                          "Click Here For Set Prize",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Visibility(
                      visible: SetPrize,
                      child: Column(
                        children: [
                          Icon(
                            Icons.swipe_up,
                            size: 50,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: h * 0.05,
                          ),
                          Text(
                            "Prize for Kariana Items",
                            style: TextStyle(
                              color: MyFg,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(w * 0.1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Items",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Prize",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          ...listofitems
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(e,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                          Container(
                                            width: w*0.3,
                                            child: Column(
                                              children: [
                                                TextFormField(
                                                  style: TextStyle(color: Colors.white),
                                                  onFieldSubmitted: (val){
                                                    setState(() {
                                                     Universal.itemprize.add(val);
                                                    });
                                                    print(Universal.itemprize);
                                                  },
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                              .toList()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
