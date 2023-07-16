import 'package:e_commerce_app/utils/colors_utils.dart';
import 'package:e_commerce_app/utils/image_utils.dart';
import 'package:e_commerce_app/utils/product_utils.dart';
import 'package:e_commerce_app/utils/routes_utils.dart';
import 'package:e_commerce_app/views/components/category_tile.dart';
import 'package:e_commerce_app/views/screens/detail_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? cat;
  RangeValues myRange = const RangeValues(0, 5000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.cartPage);
              },
              child: const Icon(Icons.add_shopping_cart),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  DropdownButton(
                    value: cat,
                    hint: const Text("Select category",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    items: allCategories
                        .map(
                          (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                        ),
                        ),
                      ),
                    )
                        .toList(),
                    onChanged: (cnt) {
                      setState(() {
                        cat = cnt.toString();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Visibility(
                    visible: cat != null,
                    child: ActionChip(
                      onPressed: () {
                        setState(() {
                          cat = null;
                          myRange = RangeValues(0, 10000);
                        });
                      },
                      label: Text("Clear"),
                      avatar: Icon(Icons.close),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: cat != null,
                child: Row(
                  children: [
                    Text(
                      "From\n\$ ${myRange.start.toInt()}",
                      textAlign: TextAlign.center,
                    ),
                    Expanded(
                      child: RangeSlider(
                        min: 0,
                        max: 10000,
                        values: myRange,
                        onChanged: (range) {
                          setState(() {
                            myRange = range;
                          });
                        },
                      ),
                    ),
                    Text(
                      "To\n\$ ${myRange.end.toInt()}",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              (cat == null)
                  ? Column(
                children: allCategories
                    .map(
                      (e) => CategoryTile(
                    category: e,
                  ),
                )
                    .toList(),
              )
                  : CategoryTile(
                category: cat!,
                min: myRange.start,
                max: myRange.end,
              ),
            ],
          ),
        ),
      ),
      //backgroundColor: Colors.black,
    );
  }
}
