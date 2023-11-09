import 'package:flutter/material.dart';

String uri = 'https://emart-xql0.onrender.com';

class GlobalVariables {
  //colors
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(231, 8, 245, 43),
      Color.fromARGB(231, 8, 245, 43),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.black87;
  static const unselectedNavBarColor = Colors.black87;

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Food',
      'image': 'assets/images/food.jpg',
    },
    {
      'title': 'Books',
      'image': 'assets/images/book1.jpg',
    },
    {
      'title': 'Electronics',
      'image': 'assets/images/elec.jpg',
    },
    {
      'title': 'Furniture',
      'image': 'assets/images/furn.jpg',
    },
    {
      'title': 'Fashion',
      'image': 'assets/images/fash1.jpg',
    },
  ];
}
