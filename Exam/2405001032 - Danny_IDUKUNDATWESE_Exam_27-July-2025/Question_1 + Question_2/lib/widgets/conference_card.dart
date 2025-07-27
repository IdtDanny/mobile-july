import 'package:event_hive_pro/models/conference.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConferenceCard extends StatelessWidget {
  final Conference conference;

  const ConferenceCard({super.key, required this.conference});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/conference/${conference.id}');
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  child: Image.network(
                    conference.bannerUrl,
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover, 
                  ),
                ),
                Text(conference.name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
              ]
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('${conference.startDate}/${conference.endDate}', maxLines: 2, style: TextStyle(fontSize: 10.0),),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.lightbulb, size: 10.0),
                          Text(conference.theme, maxLines: 3, style: TextStyle(fontSize: 10.0),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}