import 'package:flutter/material.dart';
import 'package:gku/pages/about_page.dart';
import 'package:gku/pages/blog_page.dart';
import 'package:gku/pages/contact_page.dart';
import 'package:gku/pages/home_page.dart';
import 'package:gku/widgets/bottom_gnav.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router =
    GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: "/", routes: [
  ShellRoute(
    navigatorKey: _shellNavigatorKey,
    builder: (context, state, child) {
      return NavBar(child: child);
    },
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        path: '/blogs',
        builder: (context, state) => const BlogsPage(),
      ),
      GoRoute(
        path: '/contact',
        builder: (context, state) => const ContactPage(),
      ),
    ],
  )
]);
