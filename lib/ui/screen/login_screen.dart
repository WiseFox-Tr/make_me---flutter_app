import 'package:flutter/material.dart';
import 'package:make_me/const/AppStrings.dart';
import 'package:make_me/ui/widget/AppButton.dart';
import 'package:make_me/ui/widget/AppLogo.dart';
import 'package:make_me/ui/widget/AppTextField.dart';
import 'package:make_me/ui/widget/build_app_bar.dart';
import 'package:make_me/utilities/get_screen_size.dart';

import '../app_routes.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: AppStrings.logInBtnText),
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
                    onChanged: () {},
                    textHint: AppStrings.emailHint,
                  ),
                  AppTextField(
                    isPassword: true,
                    onChanged: () {},
                    textHint: AppStrings.passwordHint,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: getScreenWidth(context) * 0.08),
                      child: TextButton(
                        child: Text(AppStrings.askIfPasswordForgotten),
                        onPressed: () {
                          //todo : forgotten password callback
                        },
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: getScreenWidth(context) * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(AppStrings.askIfNoAccountYet, style: TextStyle(fontSize: 14.0)),
                        IconButton(
                          onPressed: () => Navigator.pushNamed(context, IdScreen.registerScreen),
                          icon: Icon(Icons.account_circle_outlined),
                          iconSize: 30.0,
                        ),
                      ],
                    ),
                    AppButton(
                      label: AppStrings.logInBtnText,
                      onPressed: () {
                        //todo : create firebase project
                        //todo : login callback
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
