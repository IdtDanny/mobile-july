import 'package:fireapp/app_router.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(FireApp());
}

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
