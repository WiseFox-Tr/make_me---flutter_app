
import 'package:flutter/material.dart';
import 'package:make_me/const/AppColors.dart';
import 'package:make_me/utilities/get_screen_size.dart';

class AppTextField extends StatelessWidget {

  final bool isDense;
  final isPassword;
  final TextInputType keyboardType;
  final Function onChanged;
  final TextAlign textAlign;
  final String textHint;

  AppTextField({
    this.isDense = true,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    required this.onChanged,
    this.textAlign = TextAlign.center,
    required this.textHint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenWidth(context) * 0.08, vertical: 10.0),
      child: TextField(
        cursorColor: AppColors.darkBlue,
        keyboardType: keyboardType,
        obscureText: isPassword,
        textAlign: textAlign,
        decoration: InputDecoration(
          isDense: isDense,
          hintStyle: TextStyle(color: Colors.blueGrey),
          hintText: textHint,
          contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkBlue, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkBlue, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
        onChanged: onChanged(),
      ),
    );
  }
}
