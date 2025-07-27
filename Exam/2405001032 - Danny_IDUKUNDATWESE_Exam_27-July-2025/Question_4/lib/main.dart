import 'package:flutter/material.dart';
import 'package:property_finder/homepage.dart';

void main () => runApp(PropertyFinder());

class PropertyFinder extends StatelessWidget {
  const PropertyFinder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Property Finder',
      home: Homepage(),
    );
  }
}