import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const Navbar({super.key,
  required this.selectedIndex,
  required this.onItemTapped
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}