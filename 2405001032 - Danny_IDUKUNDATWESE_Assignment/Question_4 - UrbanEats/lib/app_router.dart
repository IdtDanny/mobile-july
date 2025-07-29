import 'package:go_router/go_router.dart';
import 'package:urban_eats/pages/add_restaurant_page.dart';
import 'package:urban_eats/pages/discovery_page.dart';
import 'package:urban_eats/pages/restaurant_details_page.dart';

final appRoute = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => DiscoveryPage(),
    ),
    GoRoute(
      path: '/restaurant/:id',
      builder: (context, state) {
        final rId = state.pathParameters['id']!;
        return RestaurantDetailsPage(restoId: rId);
      },
    ),
    GoRoute(
      path: '/add-restaurant',
      builder: (context, state) => AddRestaurantPage(),
    ),
  ]
);