import 'package:event_hive_pro/data/mock_data.dart';
import 'package:event_hive_pro/widgets/conference_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        title: Text('Event Hive Pro'),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Upcoming Conferences', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                IconButton(
                  onPressed: () {
                    CheckboxListTile(value: true, onChanged: (value) {}, title: Text('AI'),);
                  }, 
                  icon: Icon(Icons.filter_list_rounded)
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Expanded(
              child: ListView.builder(
                itemCount: mockData.length,
                itemBuilder: (context, index) {
                  return ConferenceCard(conference: mockData[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}