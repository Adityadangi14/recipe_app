part of 'routes_import.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const RecipeSearchScreen(),
    ),
  ],
);
