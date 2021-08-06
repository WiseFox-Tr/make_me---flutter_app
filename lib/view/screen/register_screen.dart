import 'package:flutter/material.dart';
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
      appBar: buildAppBar(title: AppStrings.registerBtnText),
      body: SingleChildScrollView(
        child: SizedBox(
          height: getScreenHeight(context) * 0.85,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppLogo(),
              Column(
                children: [
                  AppTextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: () {},
                    textHint: AppStrings.emailHint,
                  ),
                  AppTextField(
                    isPassword: true,
                    onChanged: () {},
                    textHint: AppStrings.passwordHint,
                  ),
                  AppTextField(
                    isPassword: true,
                    onChanged: () {},
                    textHint: AppStrings.passwordConfirmationHint,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(
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
          ),
        ),
      ),
    );
  }
}
