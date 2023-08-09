import 'package:festival_post_app/utils/fest_data.dart';
import 'package:festival_post_app/utils/modal_fest.dart';
import 'package:flutter/material.dart';

class CountryFestivalDetailPage extends StatefulWidget {
  const CountryFestivalDetailPage({Key? key}) : super(key: key);

  @override
  State<CountryFestivalDetailPage> createState() =>
      _CountryFestivalDetailPageState();
}

class _CountryFestivalDetailPageState extends State<CountryFestivalDetailPage> {
  @override
  Widget build(BuildContext context) {
    var countryname = ModalRoute.of(context)!.settings.arguments;
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80))),
        bottom: PreferredSize(
            child: SizedBox(), preferredSize: Size.fromHeight(100)),
        title: Text("${countryname}"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: List.generate(
            allFestival.length,
            (index) => (countryname == allFestival[index].country)
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                      width: 20,
                      color: Colors.red,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.yellowAccent,
                      height: 20,
                      width: 20,
                    ),
                  ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
