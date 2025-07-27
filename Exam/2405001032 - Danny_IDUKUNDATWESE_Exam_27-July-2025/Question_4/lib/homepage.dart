import 'package:flutter/material.dart';
import 'package:property_finder/data/mock_data.dart';
import 'package:property_finder/widgets/property_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: Icon(Icons.filter_alt_rounded)),
        ],
        title: Text('Property Finder'),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: mockData.length,
                itemBuilder: (context, index) {
                  return PropertyCard(commercial: mockData[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}