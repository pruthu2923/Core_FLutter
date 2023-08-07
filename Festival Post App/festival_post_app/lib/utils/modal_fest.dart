import 'package:flutter/cupertino.dart';

class Festival {
  final String country;
  final String festival;
  final String description;

  Festival(
      {required this.country,
      required this.festival,
      required this.description});

  factory Festival.fromMap({required Map data}) {
    return Festival(
        country: data['country'],
        festival: data['festival'],
        description: data['description']);
  }
}
