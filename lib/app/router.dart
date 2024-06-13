import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_management_app/app/onboarding/screens/onboarding_screen.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return OnBoardingScreen();
      },
    ),
  ],
);
