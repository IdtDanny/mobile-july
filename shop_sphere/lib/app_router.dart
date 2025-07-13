import 'package:go_router/go_router.dart';
import 'package:shop_sphere/homepage.dart';
import 'package:shop_sphere/widget/product_card.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/product/:id',
      builder: (context, state) {
        final productId = state.pathParameters['id']!;
        return ProductPageDetails(productId: productId);
      },
    ),
  ],
);
