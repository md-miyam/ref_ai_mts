import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/CategoriesScreen/categories_screen.dart';
import 'package:ref_ai/views/HomeScreen/home_screen.dart';
import 'package:ref_ai/views/ProfileScreen/profile_screen.dart';
import 'package:ref_ai/views/ScanScreen/scan_screen.dart';
import 'package:ref_ai/views/TrackerScreen/tracker_screen.dart';

class BottomNev extends StatefulWidget {
  const BottomNev({super.key});

  @override
  State<BottomNev> createState() => _BottomNevState();
}

class _BottomNevState extends State<BottomNev> {
  static Color? selectedItemColor = AppColor.bottomNevSelectedItemColor;
  int _newIndex = 0;

  List <Widget> screenList = [HomeScreen(),ScanScreen(),CategoriesScreen(),TrackerScreen(),ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[_newIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.bottomNevColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: Colors.white,
        currentIndex: _newIndex,
        onTap: (v) {
          setState(() {
            _newIndex = v;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/home.png',
              color: _newIndex == 0 ? Color(0xFF00C27A) : Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/scan.png',
              color: _newIndex == 1 ? Color(0xFF00C27A) : Colors.white,
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/categories.png',
              color: _newIndex == 2 ? Color(0xFF00C27A) : Colors.white,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tracker.png',
              color: _newIndex == 3 ? Color(0xFF00C27A) : Colors.white,
            ),
            label: 'Tracker',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile.png',
              color: _newIndex == 4 ? Color(0xFF00C27A) : Colors.white,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
