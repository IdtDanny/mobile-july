import 'package:event_hive_pro/app_router.dart';
import 'package:flutter/material.dart';

void main() => runApp(EventHivePro());

class EventHivePro extends StatelessWidget {
  const EventHivePro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRoute,
      debugShowCheckedModeBanner: false,
      title: 'Event Hive Pro',
    );
  }
}