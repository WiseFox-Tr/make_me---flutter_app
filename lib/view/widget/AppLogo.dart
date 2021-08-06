import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:make_me/const/AppStrings.dart';
import 'package:make_me/utilities/get_screen_size.dart';

class AppLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(context) * 0.5,
      height: getScreenHeight(context) * 0.2,
      child: SvgPicture.asset(AppStrings.logoPath),
    );
  }
}
