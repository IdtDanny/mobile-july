import 'package:flutter/material.dart';
import 'package:pro_link/app_router.dart';

void main() => runApp(ProLink());

class ProLink extends StatelessWidget {
  const ProLink({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRoute,
      debugShowCheckedModeBanner: false,
      title: 'Prolink',
    );
  }
}