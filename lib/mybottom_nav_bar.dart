import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'signup.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;
  List<Widget> _screen = [
    Home(),
    LogIn(),
    SignUp(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTaped(int selectedIndex) {
    setState(() {
      _pageController.jumpToPage(selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: PageView(
          controller: _pageController,
          children: _screen,
          onPageChanged: _onPageChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          onTap: _onItemTaped,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: _selectedIndex == 0 ? Colors.red : Colors.grey,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: _selectedIndex == 1 ? Colors.red : Colors.grey,
                ),
                label: "Wish List"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _selectedIndex == 2 ? Colors.red : Colors.grey,
              ),
              label: "Track",
            ),
          ],
        ));
  }
}
