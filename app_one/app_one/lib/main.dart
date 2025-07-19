import 'package:app_one/landpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(SpendKnack());

class SpendKnack extends StatelessWidget {
  const SpendKnack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpendKnack',
      home: LandPage(),
    );
  }
}