import 'package:code_source/const/AppColors.dart';
import 'package:code_source/view/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: AppColors.lightWhite
        ),
        scaffoldBackgroundColor: AppColors.lightWhite,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppColors.lightPurple,
            onPrimary: AppColors.lightWhite,
          )
        )
      ),
      routes: AppRoutes.routes,
      initialRoute: IdScreen.homeScreen,
    );
  }
}

