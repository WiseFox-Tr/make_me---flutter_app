import 'package:flutter/material.dart';
import 'package:make_me/const/AppColors.dart';
import 'package:make_me/const/AppStrings.dart';
import 'package:make_me/utilities/get_screen_size.dart';
import 'package:make_me/view/widget/AppButton.dart';
import 'package:make_me/view/widget/AppTextField.dart';
import 'package:make_me/view/widget/build_app_bar.dart';

class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Make me Logo'),
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
            AppButton(
              label: AppStrings.registerBtnText,
              onPressed: () {
                //todo : create firebase project
                //todo : register callback
              },
            )
          ],
        )
      ),
    );
  }
}
