import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tutorial/screens/errorscreen.dart';
import 'package:tutorial/screens/homescreen.dart';
import 'package:tutorial/screens/profilescreen.dart';

class MyAppRoute {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(  
        name: 'home',
        path: '/',
        pageBuilder: (context, state) => MaterialPage(child: HomeScreen()),
      ),
      GoRoute(
        name: 'profile',
        path: '/profile',
        pageBuilder: (context, state) => MaterialPage(child: ProfileScreen()),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(child: ErrorPage()),
  );
}
