import 'package:event_hive_pro/data/mock_data.dart';
import 'package:event_hive_pro/models/conference.dart';
import 'package:flutter/material.dart';

class ConferenceDetailsPage extends StatefulWidget {
  final String conferenceId;

  const ConferenceDetailsPage({super.key, required this.conferenceId});

  @override
  State<ConferenceDetailsPage> createState() => _ConferenceDetailsPageState();
}

class _ConferenceDetailsPageState extends State<ConferenceDetailsPage> {
  @override
  Widget build(BuildContext context) {

    final Conference confDetail = mockData.firstWhere(
      (c) => c.id == widget.conferenceId, orElse: () {
        return Conference(id: 'error', name: 'error', theme: 'error', venue: 'error', startDate: 'error', endDate: 'error', bannerUrl: 'error', schedule: []);
      } 
    );

    return Scaffold(
      appBar: AppBar(title: Text('Conference')),
      body: DefaultTabController(
        length: 3, 
        child: TabBarView(
          children: [
            ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => Text('Day 1'),)
          ] 
        ),
      ),
    );
  }
}