import 'package:flutter/material.dart';
import 'package:make_me/const/AppColors.dart';

import 'view/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: AppColors.lightWhite,
          iconTheme: IconThemeData(
            color: AppColors.darkBlue,
          ),
          actionsIconTheme: IconThemeData(
            color: AppColors.darkBlue,
          ),
        ),
        scaffoldBackgroundColor: AppColors.lightWhite,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppColors.darkBlue,
            onPrimary: AppColors.lightWhite,
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: AppColors.darkBlue,
            textStyle: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
      routes: AppRoutes.routes,
      initialRoute: IdScreen.homeScreen,
    );
  }
}
