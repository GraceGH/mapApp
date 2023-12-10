// mainPage.dart

import 'package:flutter/material.dart';
import 'favorites.dart';
import 'mypage.dart';
import 'home.dart';
import 'setting.dart';
import 'style.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 1; // Index of the selected tab
  IconData _floatingButtonIcon = Icons.home; // Default icon

  final List<Widget> _pages = [
    Favourites(),
    Home(),
    MyPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // 추가된 부분
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

      body: _pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        child: BottomAppBar(
          color: Colors.white, // 네비게이션 바의 배경색
          shape: const CircularNotchedRectangle(), // 테두리를 둥글게 만듭니다.
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                        _floatingButtonIcon = Icons.home;
                      });
                    },
                    child: Text(
                      '즐겨찾기',
                      style: TextStyle(
                        fontFamily: "Lotte",
                        fontSize: 20,
                        color:
                            _selectedIndex == 0 ? AppColor.blue1 : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                        _floatingButtonIcon = Icons.home;
                      });
                    },
                    child: Text(
                      '마이페이지',
                      style: TextStyle(
                        fontFamily: "Lotte",
                        fontSize: 20,
                        color:
                            _selectedIndex == 2 ? AppColor.blue1 : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: _selectedIndex ==1 ? Container()
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 70.0,
        width: 70.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: AppColor.blue1,
            onPressed: () {
              setState(() {
                _selectedIndex = 1; // 현재 페이지가 인덱스 1이 아닐 때는 PlanPage로 이동
              });
              // }
            },
            child: Column(children: [
              Container(
                height: 17,
              ),
              Icon(
                _floatingButtonIcon,
                color: Colors.white,
                size: 23,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
