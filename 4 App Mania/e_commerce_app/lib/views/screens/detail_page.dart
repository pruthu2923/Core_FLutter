import 'package:e_commerce_app/utils/colors_utils.dart';
import 'package:e_commerce_app/utils/routes_utils.dart';
import 'package:e_commerce_app/views/components/back_button.dart';
import 'package:flutter/material.dart';
import '../../utils/product_utils.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    //Catch data in named routing
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const MyBackButton(),
        title: const Text("Detail page"),
        centerTitle: true,
        backgroundColor: myBg,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.cartPage);
            },
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...data['images']
                      .map(
                        (e) => Container(
                      height: h * 0.40,
                      width: w * 0.8,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.grey,
                            offset: Offset(9, 9),
                          ),
                        ],
                        image: DecorationImage(
                          image: NetworkImage(e),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                      .toList(),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: h * 0.45,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Text(
                              data['title'],
                              style: const TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "\$ ${data['price']}",
                              style: TextStyle(
                                fontSize: 24,
                                color: themeColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Text(
                              data['category'],
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "${data['rating']}",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: myBg,
      floatingActionButton: FloatingActionButton(
        backgroundColor: themeColor,
        onPressed: () {
          if (!cartItems.contains(data)) {
            cartItems.add(data);
          }
        },
        child: const Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
