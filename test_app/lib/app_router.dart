import 'package:go_router/go_router.dart';
import 'package:test_app/homepage.dart';
import 'package:test_app/page/product_details.dart'; // Assuming you have a ProductDetails widget

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/product/:id',
      builder: (context, state) {
        final prodId = state.pathParameters['id']!;
        return ProductDetails(productId: prodId);
      },
    ),
  ],
);
