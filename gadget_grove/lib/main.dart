import 'package:flutter/material.dart';
import 'package:gadget_grove/homepage.dart';

void main() => runApp(const GadgetGrove());

class GadgetGrove extends StatelessWidget {
  const GadgetGrove({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gadget Grove App',
      home: HomePage(),
    );
  }
}