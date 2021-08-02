
import 'package:flutter/material.dart';
import 'screen/home_screen.dart';
import 'screen/login_screen.dart';
import 'screen/register_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    IdScreen.homeScreen : (context) => HomeScreen(),
    IdScreen.loginScreen : (context) => LoginScreen(),
    IdScreen.registerScreen : (context) => RegisterScreen(),
  };
}

class IdScreen {
  static const homeScreen = 'home_screen';
  static const loginScreen = 'login_screen';
  static const registerScreen = 'register_screen';
}
