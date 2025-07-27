import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Pro Link'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () { 
                context.push('/sign-up'); 
              }, 
              child: Text('Sign-up'),
            ),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: () {}, child: Text('Login')),
          ],
        ),
      ),
    );
  }
}