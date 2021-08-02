import 'package:flutter/material.dart';
import 'package:make_me/view/widget/build_app_bar.dart';

class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Text("Register screen"),
      ),
    );
  }
}
