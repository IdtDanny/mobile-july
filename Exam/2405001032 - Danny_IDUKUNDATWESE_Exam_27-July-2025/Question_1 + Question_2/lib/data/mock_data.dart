import 'package:event_hive_pro/models/conference.dart';
import 'package:event_hive_pro/models/conference_day.dart';
import 'package:event_hive_pro/models/session.dart';

List<Conference> mockData = [
  Conference(
    id: '1', 
    name: 'Hub for Tech Giants', 
    theme: 'Better technologies for Great future', 
    venue: 'Convention Center', 
    startDate: '2025-06-10', 
    endDate: '2025-06-14', 
    bannerUrl: 'https://picsum.photos/seed/lamp/600/400', 
    schedule: [
      ConferenceDay(
        dayNumber: 30, 
        date: '2025-06-10 00:00:00', 
        sessions: [
          Session(
            id: '1', 
            title: 'Contribution of Merging Technology Manufacturers', 
            startTime: '2025-06-10 10:00:00', 
            endTime: '2025-06-10 11:00:00', 
            speakerId: '1'
          )
        ] 
      )
    ]
  ),

  Conference(
    id: '2', 
    name: 'AI/ML Evolution', 
    theme: 'Contribution of Artificial Intelligence.', 
    venue: 'Convention Center', 
    startDate: '2025-07-10', 
    endDate: '2025-07-14', 
    bannerUrl: 'https://picsum.photos/seed/laptop/600/400', 
    schedule: [
      ConferenceDay(
        dayNumber: 30, 
        date: '2025-07-10 09:00:00', 
        sessions: [
          Session(
            id: '1', 
            title: 'Developing Learning Models suited for Variety Industries', 
            startTime: '2025-07-10 10:00:00', 
            endTime: '2025-07-10 11:00:00', 
            speakerId: '1'
          )
        ] 
      )
    ]
  )
];