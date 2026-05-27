import 'package:go_router/go_router.dart';
import 'package:health_hub/features/pages/homepage.dart';
import 'package:health_hub/features/pages/intro_page.dart';

class AppRoute {
  static final GoRouter approute = GoRouter(
    initialLocation: '/intro',
    routes: [
      GoRoute(path: '/home', builder: (context, state) => const Homepage()),
      GoRoute(path: '/intro', builder: (context, state) => const IntroPage()),
    ],
  );
}
