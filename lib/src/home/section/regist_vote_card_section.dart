import 'package:flutter/material.dart';
import 'package:harry_potter_avalon/src/constants.dart';
import 'package:harry_potter_avalon/src/home/widget/home_text_widget.dart';

class RegistVoteCardSection extends StatelessWidget {
  const RegistVoteCardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepOrange),
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(MediaQuery.of(context).size.width, kButtonHeight))),
            child: const HomeTextWidget(text: "투표카드 관리하기"),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
