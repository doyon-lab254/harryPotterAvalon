import 'package:flutter/material.dart';

class VoteSection extends StatefulWidget {
  const VoteSection({Key? key}) : super(key: key);

  @override
  _VoteSectionState createState() => _VoteSectionState();
}

class _VoteSectionState extends State<VoteSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("이곳은 투표 결과가 보여지는 공간입니다."),
    );
  }
}
