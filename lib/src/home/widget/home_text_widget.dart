import 'package:flutter/material.dart';
import 'package:harry_potter_avalon/src/constants.dart';

class HomeTextWidget extends StatelessWidget {
  final String text;
  final Color fontColor;
  const HomeTextWidget(
      {Key? key, required this.text, this.fontColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: kHomeFontSize,
        color: fontColor,
      ),
    );
  }
}
