import 'package:flutter/material.dart';
import 'package:shop_sphere/homepage.dart';

void main() {
  runApp(const ShopSphereApp());
}

class ShopSphereApp extends StatelessWidget {
  const ShopSphereApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the debug banner
      title: 'ShopSphere App',
      theme: ThemeData(
        useMaterial3: true, // Use Material 3 latest design
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: HomePage(),
    );
  }
}
