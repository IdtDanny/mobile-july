import 'package:flutter/material.dart';
import 'package:photosphere/data/mock_data.dart';
import 'package:photosphere/widget/post_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 2.0, title: Text('PhotoSphere')),
      body: ListView.builder(
        itemCount: mockPost.length,
        itemBuilder: (context, index) {
          return PostCard(post: mockPost[index], user: mockUser[index]);
        },
      ),
    );
  }
}
