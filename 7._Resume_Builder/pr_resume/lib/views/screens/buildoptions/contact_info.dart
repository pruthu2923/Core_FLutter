import 'package:flutter/material.dart';
import 'package:pr_resume/utils/backbutton.dart';
import 'package:pr_resume/utils/colors.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({Key? key}) : super(key: key);

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  bool isselected = true;
  int numbers = 0;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("Resume WorkSpace",
      //   style: TextStyle(
      //     color: Colors.white,
      //   ),
      //   ),
      //   leading: MyBackButton(),
      //   backgroundColor: MyBg,
      // ),
      body: Column(
        children: [
          Container(
            color: MyBg,
            height: 200,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      MyBackButton(),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Resume WorkSpace",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: (isselected) ? Colors.white : MyBg,
                              // border: Border(
                              //   bottom: BorderSide(
                              //     color: Colors.white,
                              //     width: 2,
                              //   ),
                              // ),
                              // border: Border.all(
                              //   color: MyBg,
                              //   width: 2,
                              // )
                              borderRadius: const BorderRadiusDirectional.only(
                                  topStart: Radius.circular(20),
                                  topEnd: Radius.circular(20))),
                          child: Center(
                            child: Text(
                              "Contact",
                              style: TextStyle(
                                  color: (isselected)
                                      ? MyBg
                                      : Colors.grey.shade300,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(
                            () {
                              isselected = true;
                              numbers = 0;
                            },
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: (isselected) ? MyBg : Colors.white,
                              borderRadius: const BorderRadiusDirectional.only(
                                topStart: Radius.circular(20),
                                topEnd: Radius.circular(20),
                              )),
                          child: Center(
                            child: Text(
                              "Photo",
                              style: TextStyle(
                                  color: (isselected)
                                      ? Colors.grey.shade300
                                      : MyBg,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(
                            () {
                              isselected = false;
                              numbers = 1;
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IndexedStack(
            index: numbers,
            children: [
              // contact page
              Padding(
                // Name
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  // height: 30,
                  decoration: BoxDecoration(
                    color: MyBg,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: "Enter Your Name",
                              labelText: "Name",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              focusColor: Colors.white,
                              prefixIconColor: Colors.white,
                              prefixIcon: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.person),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        // Email
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 15,
                            end: 15,
                            bottom: 19,
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: "Enter Your Email",
                              labelText: "Email",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              prefixIconColor: Colors.white,
                              prefixIcon: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.email_outlined),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                        // Address
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 15,
                            end: 15,
                            bottom: 19,
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: "ex. 123 , areaname , city - pincode",
                              labelText: "Location",
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.3)
                              ),
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              prefixIconColor: Colors.white,
                              prefixIcon: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.location_on_outlined),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                        // Password
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 15,
                            end: 15,
                            bottom: 19,
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: "ex. abc@12ABC\$ ",
                              labelText: "Password",
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.3),
                              ),
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              prefixIconColor: Colors.white,
                              prefixIcon: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.security_outlined),
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(12),
                                child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      visible = !visible;
                                    });
                                  },
                                  icon: Icon(
                                    (visible == false)
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: (visible==false)?Colors.greenAccent : Colors.redAccent ,
                                    width: (visible==false) ? 1: 3,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              ),
                              // enabledBorder: UnderlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: Colors.white,
                              //   ),
                              // ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: (visible==false) ? Colors.white : Colors.redAccent,
                                width: (visible==false) ? 1: 3,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Container(
                                  width: 90,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Back",
                                      style: TextStyle(
                                        color: MyBg,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Container(
                                width: 90,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40))),
                                child: Center(
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // photo page
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(200)),
                          color: Colors.yellow,
                        ),
                        child: const Center(
                          child: Text(
                            "Add Photo",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
