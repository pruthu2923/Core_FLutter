import 'package:flutter/material.dart';
import 'package:resume_app/utils/backbutton.dart';
import 'package:resume_app/utils/colors.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({Key? key}) : super(key: key);

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  bool isselected = true;
  int numbers = 0;
  bool visible = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
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
          Expanded(
            child: Container(
              color: MyBg,
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.all(w * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyBackButton(),
                        SizedBox(
                          width: w * 0.07,
                        ),
                        const Text(
                          "Resume WorkSpace",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 26),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
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
                                borderRadius:
                                    const BorderRadiusDirectional.only(
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
                                borderRadius:
                                    const BorderRadiusDirectional.only(
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
          ),
          Expanded(
            flex: 2,
            child: IndexedStack(
              index: numbers,
              children: [
                // contact page
                Padding(
                  // Name
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    // height: 30,
                    decoration: const BoxDecoration(
                      color: MyBg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Form(
                      key: formkey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please Enter The Name";
                                  } else {
                                    return null;
                                  }
                                },
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Enter Your Name",
                                  labelText: "Name",
                                  hintStyle: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  labelStyle: const TextStyle(
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
                                      borderSide: const BorderSide(
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
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter Valid Email";
                                  } else {
                                    return null;
                                  }
                                },
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Enter Your Email",
                                  labelText: "Email",
                                  hintStyle: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  labelStyle: const TextStyle(
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
                                onFieldSubmitted: (val) {
                                  bool validated =
                                      formkey.currentState!.validate();
                                  setState(() {
                                    if (validated) {
                                      formkey.currentState!.save();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content:
                                              Text("Submitted Successfully"),
                                          backgroundColor: Colors.green,
                                        ),
                                      );
                                    }
                                  });
                                },
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter The Address";
                                  } else {
                                    return null;
                                  }
                                },
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  hintText:
                                      "ex. 123 , areaname , city - pincode",
                                  labelText: "Location",
                                  hintStyle: const TextStyle(
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.3)),
                                  labelStyle: const TextStyle(
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
                            const Padding(
                              padding: EdgeInsetsDirectional.only(
                                start: 15,
                                end: 15,
                                bottom: 19,
                              ),
                              // child: TextFormField(
                              //   obscureText: !visible,
                              //   obscuringCharacter: "*",
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //   ),
                              //   decoration: InputDecoration(
                              //     hintText: "ex. abc@12ABC\$ ",
                              //     labelText: "Password",
                              //     hintStyle: TextStyle(
                              //       color: Color.fromRGBO(255, 255, 255, 0.3),
                              //     ),
                              //     labelStyle: TextStyle(
                              //       color: Colors.white,
                              //     ),
                              //     prefixIconColor: Colors.white,
                              //     prefixIcon: const Padding(
                              //       padding: EdgeInsets.all(15),
                              //       child: Icon(Icons.security_outlined),
                              //     ),
                              //     suffixIcon: Padding(
                              //       padding: const EdgeInsets.all(12),
                              //       child: IconButton(
                              //         color: Colors.white,
                              //         onPressed: () {
                              //           setState(() {
                              //             visible = !visible;
                              //           });
                              //         },
                              //         icon: Icon(
                              //           (visible == false)
                              //               ? Icons.visibility_off
                              //               : Icons.visibility,
                              //         ),
                              //       ),
                              //     ),
                              //     focusedBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //       color: (visible==false)?Colors.greenAccent : Colors.redAccent ,
                              //           width: (visible==false) ? 1: 3,
                              //     ),
                              //     borderRadius: BorderRadius.circular(30),
                              //     ),
                              //     // enabledBorder: UnderlineInputBorder(
                              //     //   borderSide: BorderSide(
                              //     //     color: Colors.white,
                              //     //   ),
                              //     // ),
                              //     enabledBorder: OutlineInputBorder(
                              //       borderSide: BorderSide(
                              //         color: (visible==false) ? Colors.white : Colors.redAccent,
                              //       width: (visible==false) ? 1: 3,
                              //       ),
                              //       borderRadius: BorderRadius.circular(12),
                              //     ),
                              //   ),
                              // ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(16),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: [
                            //       InkWell(
                            //         child: Container(
                            //           width: 90,
                            //           height: 40,
                            //           decoration: BoxDecoration(
                            //             color: Colors.white,
                            //             borderRadius: BorderRadius.all(
                            //               Radius.circular(30),
                            //             ),
                            //           ),
                            //           child: Center(
                            //             child: Text(
                            //               "Back",
                            //               style: TextStyle(
                            //                 color: MyBg,
                            //                 fontWeight: FontWeight.bold,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //         onTap: () {
                            //           Navigator.of(context).pop();
                            //         },
                            //       ),
                            //       SizedBox(
                            //         width: 60,
                            //       ),
                            //       InkWell(
                            //         onTap: (){
                            //           if(formkey.currentState!.validate()){
                            //             SnackBar(content: Text("Submitted Successfully"));
                            //           }
                            //         },
                            //         child: Container(
                            //           width: 90,
                            //           height: 40,
                            //           decoration: BoxDecoration(
                            //               color: Colors.white,
                            //               borderRadius:
                            //                   BorderRadius.all(Radius.circular(40))),
                            //           child: Center(
                            //             child: Text(
                            //               "Submit",
                            //               style: TextStyle(
                            //                 color: Colors.red,
                            //                 fontWeight: FontWeight.bold,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //       SizedBox(
                            //         height: 60,
                            //       ),
                            //     ],
                            //   ),
                            // )
                          ],
                        ),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(200)),
                            color: MyBg,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Center(
                                child: Text(
                                  "Add Photo",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  // ImagePicker picker = Imagepicker();
                                  // XFile file;
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),),
                                splashColor: MyBg.withOpacity(0.2),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: MyBg,
                                    size: 30,
                                  ),
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
