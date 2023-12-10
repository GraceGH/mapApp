// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class Setting extends StatelessWidget {
//   final List<String> itemList = [
//     '계정정보',
//     '로그아웃',
//     '회원탈퇴',
//   ];
//   Setting({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           '설정',
//           style: TextStyle(color: Colors.black),
//         ),
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       body: ListView.builder(
//         itemCount: itemList.length,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             title: Text(itemList[index]),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) =>
//                       ItemDetailPage(itemName: itemList[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
// class ItemDetailPage extends StatelessWidget {
//   final String itemName;
//
//   // 생성자를 통해 itemName을 전달받습니다.
//   ItemDetailPage({required this.itemName});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           '$itemName',
//           style: TextStyle(color: Colors.black),
//         ),
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Detail for $itemName', // 선택한 아이템의 이름을 표시
//               style: TextStyle(fontSize: 24),
//             ),
//             if (itemName == '로그아웃') // 로그아웃이 선택되었을 때
//               ElevatedButton(
//                 onPressed: () {
//                   // 여기에 로그아웃 처리를 추가
//                   // 예:
//                   FirebaseAuth.instance.signOut();
//                 },
//                 child: Text('로그아웃'),
//               ),
//             // 여기에 해당 아이템의 추가 세부 정보를 표시하는 위젯을 추가할 수 있습니다.
//
//             // 여기에 해당 아이템의 추가 세부 정보를 표시하는 위젯을 추가할 수 있습니다.
//           ],
//         ),
//       ),
//     );
//   }
// }
