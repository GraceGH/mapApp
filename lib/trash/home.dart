// // home.dart
// import 'package:flutter/material.dart';
// import 'package:mobileapp/style.dart';
//
// class Home extends StatefulWidget {
//   const Home({Key? key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildSearchBar(),
//           ),
//           Expanded(
//             child: _buildMap(),
//           ),
//         ],
//       ),
//     );
//   }
//   Widget _buildSearchBar() {
//     return Row(
//       children: [
//         Expanded(
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.grey.shade200,
//               borderRadius: BorderRadius.circular(12.0),
//             ),
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.search, color: Colors.grey),
//                 ),
//                 Container(
//                   width: 200,
//                   height:50,
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: '장소를 입력하세요',
//                       border: InputBorder.none,
//                       filled: true,
//                       fillColor: Colors.grey.shade200,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ElevatedButton(
//             onPressed: () {
//               // TODO: 검색 버튼을 눌렀을 때의 동작 추가
//             },
//             style: ElevatedButton.styleFrom(
//               primary: AppColor.blue1,
//               padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12.0),
//               ),
//             ),
//             child: Text(
//               '검색',
//               style: TextStyle(fontSize: 16),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//
//
//   // Widget _buildSearchBar() {
//   //   return Row(
//   //     children: [
//   //       Expanded(
//   //         child: Container(
//   //           decoration: BoxDecoration(
//   //             border: Border.all(color: Colors.grey),
//   //             borderRadius: BorderRadius.circular(8.0),
//   //           ),
//   //           child: Row(
//   //             children: [
//   //               Padding(
//   //                 padding: const EdgeInsets.all(8.0),
//   //                 child: Icon(Icons.search, color: Colors.grey),
//   //               ),
//   //               Expanded(
//   //                 child: TextField(
//   //                   decoration: InputDecoration(
//   //                     hintText: '장소를 입력하세요',
//   //                     border: InputBorder.none,
//   //                   ),
//   //                 ),
//   //               ),
//   //             ],
//   //           ),
//   //         ),
//   //       ),
//   //       Padding(
//   //         padding: const EdgeInsets.all(8.0),
//   //         child: ElevatedButton(
//   //           onPressed: () {
//   //             // TODO: 검색 버튼을 눌렀을 때의 동작 추가
//   //           },
//   //           style: ElevatedButton.styleFrom(
//   //             primary: AppColor.blue1,
//   //             padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16), // 버튼의 패딩 조절
//   //             shape: RoundedRectangleBorder(
//   //               borderRadius: BorderRadius.circular(12.0), // 버튼의 더 큰 값으로 조절하여 더 둥글게 만듦
//   //             ),
//   //           ),
//   //           child: Text(
//   //             '검색',
//   //             style: TextStyle(fontSize: 16), // 버튼 안의 텍스트 크기 조절
//   //           ),
//   //         ),
//   //       ),
//   //     ],
//   //   );
//   // }
//
//   Widget _buildMap() {
//     // TODO: 지도를 표시하는 위젯 추가
//     // 예를 들어, Google Maps 플러그인을 사용할 수 있습니다.
//     // https://pub.dev/packages/google_maps_flutter
//     return Container(
//     );
//   }
// }
