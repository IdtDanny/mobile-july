import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String title;
  final String description;

  const Task({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Padding(padding: const EdgeInsets.all(8.0))],
      ),
    );
  }
}
