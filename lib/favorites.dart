
import 'package:flutter/material.dart';

import 'style.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  // Sample list of favorites
  List<String> favorites = ['Place 1', 'Place 2', 'Place 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '즐겨찾기',

          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: AppColor.blue1,
        automaticallyImplyLeading: false, // Hide the back button

      ),
      body: Container(
        child: Text('hi'),
      ),
    );
  }
}
