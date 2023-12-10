// favorite.dart

import 'package:flutter/material.dart';
import 'package:mobileapp/style.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}



class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.blue1, // Set the desired blue color
                borderRadius: BorderRadius.circular(12.0), // Adjust the radius for rounded corners
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Adjust padding as needed
              child: Text(
                '즐겨찾기',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white, // Set the text color to white or any desired color
                ),
              ),
            ),
          )
        ],
      ),
    );

  }
}




//
// class _FavouritesState extends State<Favourites> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60.0),
//         child: AppBar(
//           // elevation: 0, // 이 줄을 주석 처리하거나 제거하여 AppBar 그림자를 제거합니다.
//           backgroundColor: Colors.white,
//           title: const Text(
//             '즐겨찾기',
//             // textAlign: TextAlign.center,
//             style: TextStyle(
//               // fontFamily: "Lotte",
//               fontSize: 20,
//               color: Colors.black,
//             ),
//           ),
//           // centerTitle: true,
//         ),
//       ),
//       // ...
//     );
//
//   }
// }
