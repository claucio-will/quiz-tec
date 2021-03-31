import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  MyElevatedButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      margin: EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
        ),
      ),
    );
  }
}
