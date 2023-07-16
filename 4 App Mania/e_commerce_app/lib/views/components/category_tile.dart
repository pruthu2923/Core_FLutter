import 'package:e_commerce_app/utils/product_utils.dart';
import 'package:e_commerce_app/utils/routes_utils.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CategoryTile extends StatelessWidget {
  final String category;
  double min = 0;
  double max = 10000;
  CategoryTile({super.key, required this.category, this.min = 0, this.max = 10000});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          category,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: allProducts
                .map(
                  (pro) => (pro['category'] == category)
                  ? (min <= pro['price'] && pro['price'] <= max)
                  ? GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    Routes.detailPage,
                    arguments: pro,
                  );
                },
                child: Container(
                  height: h * 0.3,
                  width: w * 0.5,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 1,
                        color: Colors.grey,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(pro['thumbnail']),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.grey.shade400,
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30),
                            ),
                          ),
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            left: 14,
                          ),
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                pro['title'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                "\$ ${pro['price']}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                         /*     RatingBarIndicator(
                                rating: double.parse(pro['rating'].toString()),
                                itemCount: 5,
                                itemSize: 20,
                                direction: Axis.horizontal,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),*/
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
                  : Container()
                  : Container(),
            )
                .toList(),
          ),
        ),
      ],
    );
  }
}
