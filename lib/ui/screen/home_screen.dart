
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:make_me/const/AppStrings.dart';
import 'package:make_me/ui/widget/AppButton.dart';
import 'package:make_me/ui/widget/build_app_bar.dart';
import 'package:make_me/utilities/get_screen_size.dart';

import '../app_routes.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double homeButtonWidth = getScreenWidth(context) * 0.9;

    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              AppStrings.appTitle,
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                AppButton(
                  label: AppStrings.registerBtnText,
                  onPressed: () => Navigator.pushNamed(context, IdScreen.registerScreen),
                  minWidth: homeButtonWidth,
                ),
                AppButton(
                  label: AppStrings.logInBtnText,
                  onPressed: () => Navigator.pushNamed(context, IdScreen.loginScreen),
                  minWidth: homeButtonWidth,
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(AppStrings.whatHaveYouToDo, style: TextStyle(fontSize: 20)),
                ),
                SvgPicture.asset(
                  AppStrings.toDoListImgPath,
                  height: getScreenHeight(context) * 0.2,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
