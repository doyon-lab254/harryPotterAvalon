import 'package:flutter/material.dart';
import 'package:harry_potter_avalon/src/home/widget/home_text_widget.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const HomeTextWidget(
        text: "랩이오사 해리포터 아발론",
      ),
    );
  }
}
