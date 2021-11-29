import 'package:flutter/material.dart';

class HomeBackGroundWidget extends StatelessWidget {
  const HomeBackGroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/home_back_image.gif"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
