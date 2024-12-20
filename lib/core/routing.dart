import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:harrypoterbooks/core/models/book_model.dart';
import 'package:harrypoterbooks/feature/home/presentation/views/details_screen.dart';
import 'package:harrypoterbooks/feature/home/presentation/views/home_screen.dart';

abstract class AppRouter {
  static const homeScreenPath = '/';
  static const detailsScreenPath = '/DetailsScreen';

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: homeScreenPath,
        builder: (BuildContext context, index) {
          return const HomeScreen();
        }),
    GoRoute(
        path: detailsScreenPath,
        pageBuilder: (context, state) {
          final book = state.extra as BookModel;
          return CustomTransitionPage(
            key: state.pageKey,
            child: DetailsScreen(bookModel4: book),
            transitionDuration: const Duration(seconds: 1),
            reverseTransitionDuration: const Duration(seconds: 1),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: const Interval(0, 0.5),
              );
              return FadeTransition(
                opacity: curvedAnimation,
                child: child,
              );
            },
          );
        }),
  ]);
}
