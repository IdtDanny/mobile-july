import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 2, title: Text('TaskFlow Home')),
      body: Center(child: Text('No tasks yet..')),
    );
  }
}
