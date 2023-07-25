import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice/utils/Universal.dart';
import 'package:invoice/utils/backbutton.dart';
import 'package:invoice/utils/colors.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  List listofitems = ["Chana", "Moong", "Wheat", "Rice", "MasoorDal", "TuwarDal", "ChanaDal"];
  @override
  bool Visible = false;
  bool PaymentVisiblity = false;

  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Customer Details",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: MyBackButton(),
        backgroundColor: MyBg,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            // height: double.infinity,
            // color: Colors.white,
            color: MyBg,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Name ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                TextFormField(
                  style: TextStyle(color: MyFg, fontSize: 17),
                  scrollPhysics: AlwaysScrollableScrollPhysics(),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.5),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(color: MyFg, width: 1.5)),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Contact Number",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  keyboardAppearance: Brightness.dark,
                  style: TextStyle(color: MyFg, fontSize: 17),
                  scrollPhysics: AlwaysScrollableScrollPhysics(),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.5),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(color: MyFg, width: 1.5)),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Address",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                TextFormField(
                  style: TextStyle(color: MyFg, fontSize: 17),
                  scrollPhysics: AlwaysScrollableScrollPhysics(),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.5),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(color: MyFg, width: 1.5)),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "PAN Number",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: MyFg, fontSize: 17),
                  scrollPhysics: AlwaysScrollableScrollPhysics(),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.5),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(color: MyFg, width: 1.5)),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Nationality",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                TextFormField(
                  style: TextStyle(color: MyFg, fontSize: 17),
                  scrollPhysics: AlwaysScrollableScrollPhysics(),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.5),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(color: MyFg, width: 1.5)),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: w*0.1,),
                    Text("Item",style: TextStyle(color: MyFg,fontSize: 19,fontWeight: FontWeight.bold),),
                    SizedBox(width : w*0.3),
                    Text("Amount(KG)",style: TextStyle(color: MyFg,fontSize: 19,fontWeight: FontWeight.bold)),
                  ],
                ),
                ...listofitems.map((e) => CheckboxListTile(
                    title: Text(e,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                    activeColor: MyBg,
                    checkColor: MyFg,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: Universal.listofitems.contains(e), onChanged: (val){
                  setState(() {
                    (Universal.listofitems.contains(e)) ? Universal.listofitems.remove(e): Universal.listofitems.add(e);
                   print(Universal.listofitems);
                  });
                })).toList(),
                SizedBox(
                  height: h * 0.04,
                ),
                Center(
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Visible = true;
                          });
                        },
                        child: Text(
                          " Calculate ",
                          style: TextStyle(color: MyBg, fontSize: 18),
                        ))),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Visibility(
                    visible: Visible,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Item",
                                style: TextStyle(
                                    color: MyBg,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Price",
                                style: TextStyle(
                                    color: MyBg,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          SizedBox(height: h*0.5,),
                          Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          RadioListTile(
                            activeColor: Colors.red,
                              title: Text(
                                "Online Payment",
                                style: TextStyle(
                                    color: MyBg,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              value: "OnlinePayMent",
                              groupValue: Universal.PaymentOption,
                              onChanged: (val) {
                                setState(() {
                                  Universal.PaymentOption = val;
                                  PaymentVisiblity = true;
                                });
                              }),
                          Visibility(
                            visible: PaymentVisiblity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Choose Online Payment Options",style: TextStyle(color: Colors.redAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                                Divider(
                                  color: Colors.black,
                                ),
                                RadioListTile(
                                  title: Text(
                                    "Paytm",
                                    style: TextStyle(
                                        color: MyBg,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  value: "Paytm",
                                  groupValue: Universal.OnlinePaymentOption,
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        Universal.OnlinePaymentOption = val;
                                      },
                                    );
                                  },
                                ),
                                RadioListTile(
                                  title: Text(
                                    "PhonePay",
                                    style: TextStyle(
                                        color: MyBg,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  value: "PhonePay",
                                  groupValue: Universal.OnlinePaymentOption,
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        Universal.OnlinePaymentOption = val;
                                      },
                                    );
                                  },
                                ),
                                RadioListTile(
                                  title: Text(
                                    "GPay",
                                    style: TextStyle(
                                        color: MyBg,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  value: "GPay",
                                  groupValue: Universal.OnlinePaymentOption,
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        Universal.OnlinePaymentOption = val;
                                      },
                                    );
                                  },
                                ),
                                RadioListTile(
                                  title: Text(
                                    "PayPal",
                                    style: TextStyle(
                                        color: MyBg,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  value: "PayPal",
                                  groupValue: Universal.OnlinePaymentOption,
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        Universal.OnlinePaymentOption = val;
                                      },
                                    );
                                  },
                                ),
                                RadioListTile(
                                  title: Text(
                                    "WisePay",
                                    style: TextStyle(
                                        color: MyBg,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  value: "WisePay",
                                  groupValue: Universal.OnlinePaymentOption,
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        Universal.OnlinePaymentOption = val;
                                      },
                                    );
                                  },
                                ),
                                RadioListTile(
                                  title: Text(
                                    "UPI Pay",
                                    style: TextStyle(
                                        color: MyBg,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  value: "UPI Pay",
                                  groupValue: Universal.OnlinePaymentOption,
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        Universal.OnlinePaymentOption = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          RadioListTile(
                            activeColor: Colors.redAccent,
                              title: Text(
                                "Offline Payment",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              value: "OfflinePayment",
                              groupValue: Universal.PaymentOption,
                              onChanged: (val) {
                                setState(() {
                                  Universal.PaymentOption = val;
                                  PaymentVisiblity = false;
                                });
                              }),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Go To PDF Page",
                                style: TextStyle(
                                    color: MyBg,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                height: h * 0.1,
                                width: w * 0.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: MyBg.withOpacity(0.3),
                                ),
                                child: Container(
                                  height: h * 0.15,
                                  width: w * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: MyBg.withOpacity(1),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        CupertinoIcons.right_chevron,
                                        color: Colors.white,
                                      ),
                                      splashColor: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
