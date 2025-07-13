import 'package:flutter/material.dart';
import 'package:taskflow/data/mock_task.dart';
import 'package:taskflow/widgets/task_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 2, title: Text('TaskFlow Home')),

      // body: Center(child: Text('No tasks yet..')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Task List',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mockTask.length,
              itemBuilder: (context, int index) {
                return TaskItem(task: mockTask[index]);
              },
            ),
            // child: ListView(
            //   children: const [
            //     SizedBox(height: 8),
            //     TaskItem(taskTitle: 'Finished Module of Flutter Course'),
            //     TaskItem(taskTitle: 'Submit the weekly report'),
            //     TaskItem(taskTitle: 'Call the client Back'),
            //     TaskItem(taskTitle: 'Grocery shopping for the week'),
            //     TaskItem(taskTitle: 'Plan the weekend trip'),
            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}
