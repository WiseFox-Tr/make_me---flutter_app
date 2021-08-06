import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final double minWidth;

  AppButton({
    required this.label,
    required this.onPressed,
    this.minWidth = 200.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(fontSize: 18.0),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(minWidth, 40.0),
        ),
      ),
    );
  }
}
