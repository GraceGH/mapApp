// home.dart
import 'package:flutter/material.dart';
import 'package:mobileapp/style.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search, color: Colors.grey),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '장소를 입력하세요',
                      border: InputBorder.none,
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
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12), // 버튼의 패딩 조절
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // 버튼의 더 큰 값으로 조절하여 더 둥글게 만듦
              ),
            ),
            child: Text(
              '검색',
              style: TextStyle(fontSize: 16), // 버튼 안의 텍스트 크기 조절
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
      color: Colors.grey.shade300, // 임시 색상, 지도 표시 위젯으로 교체해야 합니다.
    );
  }
}
