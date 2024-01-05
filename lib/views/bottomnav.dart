import 'package:flutter/material.dart';
import 'package:real_estate_app/views/pages/homepage.dart';

//Bottom navigation bar
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => _changeTab(index),
          currentIndex: _selectedTab,
          showUnselectedLabels: true,
          selectedItemColor: const Color(0xff87D8DA),
          unselectedItemColor: Colors.grey[800],
          //icons and text for the navbar
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined), label: 'Profile'),
          ]),
      body: _pages[_selectedTab],
    );
  }

//pages
  final List _pages = [
    const HomePage(),
    const Center(
      child: Text('Favourite'),
    ),
    const Center(
      child: Text('Settings'),
    ),
    const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
            'Check out Obaloluwaobi on Github for more projects💗, thanks'),
      ),
    ),
  ];
}
