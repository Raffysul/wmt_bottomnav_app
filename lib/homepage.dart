import 'package:flutter/material.dart';
import 'package:wmt_bottomnav_app/Screens/profilescreen.dart';
import 'package:wmt_bottomnav_app/Screens/settingsscreen.dart';

import 'Screens/homescreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        // selectedFontSize: 25,
        // unselectedFontSize: 16,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            //backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            //backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            //backgroundColor: Colors.green
          ),
        ],
      ),
    );
  }
}
