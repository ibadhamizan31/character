import 'package:flutter/material.dart';
import 'package:movietugas/view/characterview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'meet character',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/character',
      routes: {
        //'/homepage': (context) => homepage(),
        '/character': (context) => const Characterview(),
      },
    );
  }
}