import 'package:event_hive_pro/screen/conference_details_page.dart';
import 'package:event_hive_pro/homepage.dart';
import 'package:go_router/go_router.dart';

final appRoute = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/conference/:id',
      builder: (context, state) {
        final confId = state.pathParameters['id']!;
        return ConferenceDetailsPage(conferenceId: confId);
      },
    ),
  ],
);