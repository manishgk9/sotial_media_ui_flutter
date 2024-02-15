import 'package:attachapp/pages/home.dart';
import 'package:attachapp/pages/likes.dart';
import 'package:attachapp/pages/profile.dart';
import 'package:attachapp/pages/reels.dart';
import 'package:attachapp/pages/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIteme = 0;
  void _navigstionBar(int value) {
    setState(() {
      _selectedIteme = value;
      print(value);
    });
  }

  List<Widget> _children = [
    HomeIconPage(),
    SearchIconPage(),
    ReelsPage(),
    LikesIconPage(),
    ProfileIconPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedIteme],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIteme,
            onTap: _navigstionBar,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 27,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 27,
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.first_page,
                    size: 27,
                  ),
                  label: "reels"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    size: 27,
                  ),
                  label: "likes"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 27,
                  ),
                  label: "profile"),
            ]));
  }
}
