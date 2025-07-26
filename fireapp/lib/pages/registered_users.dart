import 'package:flutter/material.dart';

class RegisteredUsers extends StatelessWidget {
  const RegisteredUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registered Users', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Page for registered users to display')],
        ),
      ),
    );
  }
}
