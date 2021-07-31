import 'package:code_source/const/AppStrings.dart';
import 'package:code_source/utilities/get_screen_size.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final double width;

  AppButton({
    required this.label,
    required this.onPressed,
    this.width = 300.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, 35.0),
      ),
    );
  }
}
