import 'package:flutter/material.dart';

class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akun Saya'),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(Icons.person, size: 30),
          ),
          SizedBox(height: 16),
          Text('JOHN', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 8),
        ],
      ),
      ),
    );
  }
}