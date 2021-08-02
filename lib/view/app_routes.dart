import 'package:code_source/view/screen/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    IdScreen.homeScreen : (context) => HomeScreen(),
  };
}

class IdScreen {
  static const homeScreen = 'home_screen';
}
