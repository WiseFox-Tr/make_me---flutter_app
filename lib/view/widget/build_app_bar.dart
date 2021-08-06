
import 'package:flutter/material.dart';
import 'package:make_me/const/AppColors.dart';
import 'package:make_me/const/AppStrings.dart';

AppBar buildAppBar({String title = ""}) {
  return AppBar(
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.account_circle),
        iconSize: 30,
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
        iconSize: 30,
      ),
    ],
    title: Text(
      title,
      style: TextStyle(color: AppColors.powerBlack),
    ),
  );
}
