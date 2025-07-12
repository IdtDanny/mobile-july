import 'package:flutter/material.dart';
import 'package:taskflow/homepage.dart';

void main() => runApp(const TaskFlowApp());

class TaskFlowApp extends StatelessWidget {
  const TaskFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TaskFlow",
      home: HomePage(),
    );
  }
}
