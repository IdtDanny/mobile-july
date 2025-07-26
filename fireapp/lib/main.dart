import 'package:fireapp/app_router.dart';
import 'package:flutter/material.dart';

void main() => runApp(FireApp());

class FireApp extends StatelessWidget {
  const FireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRoute,
      debugShowCheckedModeBanner: false,
      title: 'FireApp',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
