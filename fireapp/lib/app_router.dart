import 'package:fireapp/homepage.dart';
import 'package:fireapp/pages/add_user.dart';
import 'package:fireapp/pages/registered_users.dart';
import 'package:go_router/go_router.dart';

final appRoute = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(path: '/add-user', builder: (context, state) => AddUser()),
    GoRoute(
      path: '/registered',
      builder: (context, state) => RegisteredUsers(),
    ),
  ],
);
