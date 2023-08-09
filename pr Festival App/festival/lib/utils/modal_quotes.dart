import 'package:flutter/cupertino.dart';

class Festival {
  final String country;
  final String festival;
  final String description;
  final String? image;

  Festival(
      {
        required this.country,
        required this.festival,
        required this.description,
        this.image,
      });

  factory Festival.fromMap({required Map data}) {
    return Festival(
        country: data['country'],
        festival: data['festival'],
        description: data['description'],
        image: data['image']
    );
  }
}
