import 'package:go_router/go_router.dart';
import 'package:my_portfolio/features/Home/view/screens/projects_page.dart';

import '../../features/Home/view/screens/contact_me_page.dart';
import '../../features/Home/view/screens/home_page.dart';

import 'app_routes_names.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: AppRoutesNames.home,
    routes: [
      GoRoute(
        path: AppRoutesNames.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppRoutesNames.projects,
        builder: (context, state) => const ProjectsScreen(),
      ),
      GoRoute(
        path: AppRoutesNames.contact,
        builder: (context, state) => const ContactMePage(),
      )
    ],
  );
}
