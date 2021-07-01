import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:socialyy/pages/camera_page.dart';
import 'package:socialyy/pages/chat_page.dart';
import 'package:socialyy/pages/discover.dart';
import 'package:socialyy/pages/home.dart';
import 'package:socialyy/pages/profile.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int _pageIndex = 0;
  List<Widget> pages = [
    HomePage(),
    ChatPage(),
    CameraPage(),
    DiscoverPage(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages.elementAt(_pageIndex),
        bottomNavigationBar: CustomNavigationBar(
          backgroundColor: Colors.transparent,
          currentIndex: _pageIndex,
          onTap: _onItemTapped,
          //selectedColor: ,
          elevation: 18.0,
          isFloating: true,
          borderRadius: Radius.circular(10.0),
          items: [
            CustomNavigationBarItem(
              icon: Icons.home,
            ),
            CustomNavigationBarItem(
              icon: Icons.message,
            ),
            CustomNavigationBarItem(
              icon: Icons.add_a_photo,
            ),
            CustomNavigationBarItem(
              icon: Icons.search,
            ),
            CustomNavigationBarItem(
              icon: Icons.person,
            ),
          ],
        ));
  }
}
