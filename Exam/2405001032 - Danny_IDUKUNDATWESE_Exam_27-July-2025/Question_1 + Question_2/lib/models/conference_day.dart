import 'package:event_hive_pro/models/session.dart';

class ConferenceDay {
  final int dayNumber;
  final String date;
  final List<Session> sessions;

  ConferenceDay({
    required this.dayNumber,
    required this.date,
    required this.sessions,
  });
}