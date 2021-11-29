import 'package:flutter/material.dart';
import 'package:harry_potter_avalon/src/home/section/member_count_section.dart';
import 'package:harry_potter_avalon/src/home/section/regist_vote_card_section.dart';
import 'package:harry_potter_avalon/src/home/section/title_section.dart';
import 'package:harry_potter_avalon/src/home/widget/home_background_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          const HomeBackGroundWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TitleSection(),
              MemberCountSection(),
              RegistVoteCardSection(),
            ],
          ),
        ],
      ),
    );
  }
}
