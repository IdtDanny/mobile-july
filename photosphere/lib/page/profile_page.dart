import 'package:flutter/material.dart';
import 'package:photosphere/data/mock_data.dart';
import 'package:photosphere/models/user.dart';

class ProfilePage extends StatelessWidget {
  final String userid;
  const ProfilePage({super.key, required this.userid});

  @override
  Widget build(BuildContext context) {
    final User user = mockUser.firstWhere(
      (u) => u.userId == userid,
      orElse: () {
        return User(
          userId: 'error',
          username: 'Unknown User',
          avatarUrl: 'Unknown',
        );
      },
    );

    return Scaffold(appBar: AppBar(title: Text('Welcome ${user.username}')));
  }
}
