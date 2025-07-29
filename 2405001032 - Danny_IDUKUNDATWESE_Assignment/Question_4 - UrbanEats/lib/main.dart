import 'package:flutter/material.dart';
import 'package:urban_eats/app_router.dart';

void main() => runApp(const UrbanEats());

class UrbanEats extends StatelessWidget {
  const UrbanEats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRoute,
      debugShowCheckedModeBanner: false,
      title: 'Urban Eats App',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal)),
    );
  }
}