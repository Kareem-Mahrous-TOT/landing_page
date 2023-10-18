import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tot_landing_page_widgets/view/screens/pages/landing_page.dart';

import 'router_paths.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final GoRouter allRoutes = GoRouter(
  // redirect: (context, state) async {
  //   if (prefs.getString(accessToken) != null) {
  //     return RoutePaths.layout;
  //   } else {
  //     return RoutePaths.login;
  //   }
  // },
  navigatorKey: navigatorKey,
  initialLocation: RoutePaths.landing,
  routes: [
    GoRoute(
      path: RoutePaths.landing,
      builder: (BuildContext context, GoRouterState state) =>
          const LandingPage(),
    ),
  ],
);
