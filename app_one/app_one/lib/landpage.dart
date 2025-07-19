import 'package:flutter/material.dart';

class LandPage extends StatelessWidget {
  const LandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          title: Text(
            'SpendKnack', 
            style: TextStyle(
              fontSize: 20, 
              color: Colors.lightBlueAccent
            )
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(50, 5, 50, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0,),
              Text('Welcome', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              const SizedBox(height: 40.0,),
              TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Username',),),
              const SizedBox(height: 40.0,),
              TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Password',),),
              const SizedBox(height: 40.0,),
              IconButton(
                onPressed: () => {print('Login Pressed')}, 
                icon: Icon(Icons.login), 
                color: Colors.lightBlue,
              ),
            ],
          ),
        ),
      );
  }
}