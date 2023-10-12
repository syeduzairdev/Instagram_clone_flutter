import 'package:classomni/screens/homepage.dart';
import 'package:classomni/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.verified_user), label: "Profile"),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 113, 3, 80),
          onTap: _onItemTapped,
        ),
        body:
            [const HomePage(), UserProfileScreen()].elementAt(_selectedIndex));
  }
}
