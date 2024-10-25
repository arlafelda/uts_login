import 'package:flutter/material.dart';
import '../../screens/login_screens.dart';
import '../../screens/register_screens.dart';
import '../../screens/home_screens.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/login': (context) => const LoginScreen(),
    '/register': (context) => const RegisterScreen(),
    '/home': (context) => const HomeScreen(),
  };
}