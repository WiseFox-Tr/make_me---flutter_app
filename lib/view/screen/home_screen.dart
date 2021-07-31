import 'package:code_source/const/Strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(Strings.appTitle),
          TextButton(
            onPressed: null,
            child: Text(
              Strings.signInBtnText
            ),
          )
        ],
      ),
    );
  }
}
