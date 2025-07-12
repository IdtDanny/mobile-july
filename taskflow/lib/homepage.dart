import 'package:flutter/material.dart';
import 'package:taskflow/widgets/task_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 2, title: Text('TaskFlow Home')),

      // body: Center(child: Text('No tasks yet..')),
      body: ListView(
        children: const [
          SizedBox(height: 8),
          TaskItem(title: 'Finished Module of Flutter Course'),
          TaskItem(title: 'Submit the weekly report'),
          TaskItem(title: 'Call the client Back'),
          TaskItem(title: 'Grocery shopping for the week'),
          TaskItem(title: 'Plan the weekend trip'),
        ],
      ),
    );
  }
}
