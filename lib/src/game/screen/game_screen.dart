import 'package:flutter/material.dart';
import 'package:harry_potter_avalon/src/game/model/member_count_model.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  static const routeName = "/Game";
  @override
  Widget build(BuildContext context) {
    final memberNumberModel =
        ModalRoute.of(context)?.settings.arguments as MemberCountModel;
    return Center(
      child: Container(
          color: Colors.blue,
          child: Text(memberNumberModel.memberNumber.toString())),
    );
  }
}
