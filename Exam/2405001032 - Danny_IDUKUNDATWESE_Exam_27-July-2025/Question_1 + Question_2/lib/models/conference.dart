import 'package:event_hive_pro/models/conference_day.dart';

class Conference {
  final String id;
  final String name;
  final String theme;
  final String venue;
  final String startDate;
  final String endDate;
  final String bannerUrl;
  final List<ConferenceDay> schedule;

  Conference({
    required this.id,
    required this.name,
    required this.theme,
    required this.venue,
    required this.startDate,
    required this.endDate,
    required this.bannerUrl,
    required this.schedule,
  });
}