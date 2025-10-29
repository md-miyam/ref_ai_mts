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
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ScanScreen(),
    CategoriesScreen(),
    TrackerScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.bottomNevColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.bottomNevSelectedItemColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedLabelStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/home.png',
              color: _selectedIndex == 0 ? Color(0xFF00C27A) : Colors.white,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/scan.png',
              color: _selectedIndex == 1 ? Color(0xFF00C27A) : Colors.white,
              height: 25,
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/categories.png',
              color: _selectedIndex == 2 ? Color(0xFF00C27A) : Colors.white,
              height: 24,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tracker.png',
              color: _selectedIndex == 3 ? Color(0xFF00C27A) : Colors.white,
              height: 22,
            ),
            label: 'Tracker',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile.png',
              color: _selectedIndex == 4 ? Color(0xFF00C27A) : Colors.white,
              height: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
