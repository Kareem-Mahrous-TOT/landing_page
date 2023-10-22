import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tot_landing_page_widgets/view/screens/pages/landing_page.dart';
 
import '../../view/screens/components/content_comps/content_pages_expo.dart';
import '../../view/screens/pages/content_page.dart';
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
    GoRoute(
      path: RoutePaths.contentPage,
      builder: (BuildContext context, GoRouterState state) =>
          const ContentPage(),
    ),
    GoRoute(
      path: RoutePaths.contactUs,
      builder: (BuildContext context, GoRouterState state) => const ContactUs(),
    ),
    GoRoute(
      path: RoutePaths.faqs,
      builder: (BuildContext context, GoRouterState state) => const Faqs(),
    ),
    GoRoute(
      path: RoutePaths.privacyAndPolicy,
      builder: (BuildContext context, GoRouterState state) =>
          const PrivacyAndPolicy(),
    ),
    GoRoute(
      path: RoutePaths.termsAndConditions,
      builder: (BuildContext context, GoRouterState state) =>
          const TermsAndConditoins(),
    ),
  ],
);
