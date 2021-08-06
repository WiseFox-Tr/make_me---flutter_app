import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:make_me/const/AppColors.dart';
import 'package:make_me/const/AppStrings.dart';
import 'package:make_me/utilities/get_screen_size.dart';
import 'package:make_me/view/widget/AppButton.dart';
import 'package:make_me/view/widget/AppLogo.dart';
import 'package:make_me/view/widget/AppTextField.dart';
import 'package:make_me/view/widget/build_app_bar.dart';

class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppLogo(),
            Column(
              children: [
                AppTextField(
                  textHint: AppStrings.emailHint,
                  onChanged: () {},
                ),
                AppTextField(
                  textHint: AppStrings.passwordHint,
                  onChanged: () {},
                ),
                AppTextField(
                  textHint: AppStrings.passwordConfirmationHint,
                  onChanged: () {},
                ),

              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: getScreenHeight(context) * 0.03,
                  horizontal: getScreenWidth(context) * 0.08,
                ),
                child: AppButton(
                  label: AppStrings.registerBtnText,
                  onPressed: () {
                    //todo : create firebase project
                    //todo : register callback
                  },
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}


