import 'package:flutter/material.dart';
import 'package:self_universityapp/screens/accountscreen.dart';
import 'package:self_universityapp/screens/homescreen.dart';
import 'package:self_universityapp/screens/savedscreen.dart';
import 'package:self_universityapp/screens/savedscreentwo.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List pages = [
    const Homescreen(),
    const SvedOneScreen(),
    const SavedTwoScreen(),
    const AccountScreen(),
  ];
  int currentIndex = 0;
  void changeIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF0E3C6E),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (value) {
            changeIndex(value);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.save), label: 'saved'),
            BottomNavigationBarItem(icon: Icon(Icons.save), label: 'saved'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
    );
  }
}
