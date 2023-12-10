// // favorite.dart
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:mobileapp/style.dart';
//
// class Favourites extends StatefulWidget {
//   const Favourites({super.key});
//
//   @override
//   State<Favourites> createState() => _FavouritesState();
// }
//
//
// class _FavouritesState extends State<Favourites> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           InkWell(
//             onTap: () {
//               showCupertinoModalPopup(
//                 context: context,
//                 builder: (_) => Container(
//                   // Replace with the content you want to show in the modal
//                   height: 200,
//                   width: 200,
//                   color: Colors.white,
//                   child: Center(
//                     child: Text('Your Modal Content'),
//                   ),
//                 ),
//               );
//             },
//             child: Container(
//               height: 120,
//               width: MediaQuery.of(context).size.width - 20,
//               padding: const EdgeInsets.only(left: 20, right: 20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//                 border: Border.all(
//                   color: Colors.grey,
//                   width: 2,
//                 ),
//               ),
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     // Add your content here if needed
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
