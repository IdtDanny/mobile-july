import 'package:go_router/go_router.dart';
import 'package:photosphere/homepage.dart';
import 'package:photosphere/page/profile_page.dart';

final appRoute = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/profile/:userid',
      builder: (context, state) {
        final id = state.pathParameters['userid']!;
        return ProfilePage(userid: id);
      },
    ),
  ],
);
