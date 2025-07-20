import 'package:flutter/material.dart';
import 'package:urban_eats/homepage.dart';

void main() => runApp(const UrbanEats());

class UrbanEats extends StatelessWidget {
  const UrbanEats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Urban Eats App',
      home: HomePage(),
    );
  }
}