import 'package:go_router/go_router.dart';
import 'package:pro_link/homepage.dart';
import 'package:pro_link/widgets/profile_creation_page.dart';

final appRoute = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => ProfileCreationPage(),
    ),
  ],
);