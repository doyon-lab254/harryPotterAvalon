import 'package:flutter/material.dart';

class ScoreSection extends StatefulWidget {
  const ScoreSection({Key? key}) : super(key: key);

  @override
  _ScoreSectionState createState() => _ScoreSectionState();
}

class _ScoreSectionState extends State<ScoreSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("현재 점수가 보여지는 곳입니다. 현재 55대 35"),
    );
  }
}
