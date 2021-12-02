import 'package:flutter/material.dart';

class RoundInformationSection extends StatefulWidget {
  const RoundInformationSection({Key? key}) : super(key: key);

  @override
  _RoundInformationSectionState createState() =>
      _RoundInformationSectionState();
}

class _RoundInformationSectionState extends State<RoundInformationSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("3차 방어전: 약초학 온실, 방어인원: 3명"),
    );
  }
}
