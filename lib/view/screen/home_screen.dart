import 'package:code_source/const/Strings.dart';
import 'package:code_source/utilities/get_screen_size.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(Strings.appTitle),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    //todo : register callback
                  },
                  child: Text(
                      Strings.signInBtnText
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(getScreenWidth(context) * 0.9, 35)
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    //todo : register callback
                  },
                  child: Text(
                      Strings.logInBtnText
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(getScreenWidth(context) * 0.9, 35)
                  ),
                ),

              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text('Nothing to show !'),
                ),
                Image.asset(
                  ('assets/images/todolist_img.jpg'),
                  height: getScreenHeight(context) * 0.5,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
