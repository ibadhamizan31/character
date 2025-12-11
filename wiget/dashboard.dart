import 'package:flutter/material.dart';
import 'package:movietugas/view/akun.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Dashboard(), // Home
    Akun(), // Profile
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}