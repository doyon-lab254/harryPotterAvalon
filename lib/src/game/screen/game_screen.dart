import 'package:flutter/material.dart';
import 'package:harry_potter_avalon/src/game/model/member_count_model.dart';
import 'package:harry_potter_avalon/src/game/section/map_section.dart';
import 'package:harry_potter_avalon/src/game/section/round_information_section.dart';
import 'package:harry_potter_avalon/src/game/section/score_section.dart';
import 'package:harry_potter_avalon/src/game/section/vote_section.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  static const routeName = "/Game";

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int memberCount = 0;

  @override
  Widget build(BuildContext context) {
    if (isMemberCountNotSet()) {
      setMemberCount(
        memberNumberModel:
            ModalRoute.of(context)?.settings.arguments as MemberCountModel,
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          RoundInformationSection(),
          ScoreSection(),
          MapSection(),
          VoteSection(),
        ],
      ),
    );
  }

  bool isMemberCountNotSet() {
    return memberCount == 0;
  }

  void setMemberCount({required MemberCountModel memberNumberModel}) {
    memberCount = memberNumberModel.memberNumber;
  }
}
