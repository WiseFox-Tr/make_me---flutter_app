import 'package:flutter/material.dart';
import 'package:make_me/const/AppStrings.dart';
import 'package:make_me/utilities/get_screen_size.dart';
import 'package:make_me/view/app_routes.dart';
import 'package:make_me/view/widget/AppButton.dart';
import 'package:make_me/view/widget/AppLogo.dart';
import 'package:make_me/view/widget/AppTextField.dart';
import 'package:make_me/view/widget/build_app_bar.dart';

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
