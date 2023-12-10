// mainPage.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/favorites.dart';
import 'setting.dart';
import 'style.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'MapEasy',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Lotte",
              fontSize: 25,
              color: AppColor.blue1,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Setting(),
                  ),
                );
              },
              icon: const Icon(Icons.account_circle, color: Colors.black),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildSearchBar(),
          ),
          Expanded(
            child: _buildMap(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalPopup(  // ➋ BottomSheet 열기
            context: context,
            builder: (_) => Favourites(
              // selectedDate: selectedDate,
            ),
          );
          // TODO: Define the action when the button is pressed
        },
        backgroundColor: AppColor.blue1, // Set the background color
        child: Icon(Icons.star),
        mini: true,// Set the icon
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }


  Widget _buildSearchBar() {
    return Row(
      children: [
        SizedBox(width:5,),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search, color: Colors.grey),
                ),
                Container(
                  width: 200,
                  height:50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '장소를 입력하세요',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey.shade200,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              // TODO: 검색 버튼을 눌렀을 때의 동작 추가
            },
            style: ElevatedButton.styleFrom(
              primary: AppColor.blue1,
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: Text(
              '검색',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildMap() {
    // TODO: 지도를 표시하는 위젯 추가
    // 예를 들어, Google Maps 플러그인을 사용할 수 있습니다.
    // https://pub.dev/packages/google_maps_flutter
    return Container(
    );
  }

}
