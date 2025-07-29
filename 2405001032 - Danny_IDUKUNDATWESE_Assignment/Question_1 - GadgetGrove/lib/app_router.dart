import 'package:gadget_grove/homepage.dart';
import 'package:gadget_grove/pages/checkout_page.dart';
import 'package:go_router/go_router.dart';
import 'package:gadget_grove/pages/product_details_page.dart';

final appRoute = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/product/:id',
      builder: (context, state) {
        final prodId = state.pathParameters['id']!;
        return ProductDetailsPage(productId: prodId);
      },
    ),
    GoRoute(
      path: '/checkout',
      builder: (context, state) => CheckoutPage(),
    ),
  ],
);