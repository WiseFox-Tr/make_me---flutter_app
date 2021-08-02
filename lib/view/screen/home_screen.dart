
import 'package:flutter/material.dart';
import 'package:make_me/const/AppStrings.dart';
import 'package:make_me/utilities/get_screen_size.dart';
import 'package:make_me/view/widget/AppButton.dart';
import 'package:make_me/view/widget/build_app_bar.dart';

import '../app_routes.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double homeButtonWidth = getScreenWidth(context) * 0.9;

    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.appTitle,
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                AppButton(
                  label: AppStrings.signInBtnText,
                  onPressed: () => Navigator.pushNamed(context, IdScreen.registerScreen),
                  width: homeButtonWidth,
                ),
                AppButton(
                  label: AppStrings.logInBtnText,
                  onPressed: () => Navigator.pushNamed(context, IdScreen.loginScreen),
                  width: homeButtonWidth,
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(AppStrings.nothingToShow),
                ),
                Image.asset(
                  AppStrings.toDoListImgPath,
                  height: getScreenHeight(context) * 0.5,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
