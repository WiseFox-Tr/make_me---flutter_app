import 'package:code_source/const/AppStrings.dart';
import 'package:code_source/utilities/get_screen_size.dart';
import 'package:code_source/view/widget/AppButton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double homeButtonWidth = getScreenWidth(context) * 0.9;

    return Scaffold(
      appBar: AppBar(),
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
                  onPressed: () {//todo : register callback
                  },
                  width: homeButtonWidth,
                ),
                AppButton(
                  label: AppStrings.logInBtnText,
                  onPressed: () {//todo : logIn callback
                  },
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
