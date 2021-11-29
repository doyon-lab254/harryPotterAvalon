import 'package:flutter/material.dart';

class MemberCountSelectorItemWidget extends StatefulWidget {
  final bool isSelected;
  final int memberCount;
  final Function onPresssed;

  const MemberCountSelectorItemWidget({
    Key? key,
    required this.isSelected,
    required this.memberCount,
    required this.onPresssed,
  }) : super(key: key);

  @override
  _MemberCountSelectorState createState() => _MemberCountSelectorState();
}

class _MemberCountSelectorState extends State<MemberCountSelectorItemWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        widget.memberCount.toString() + "인",
      ),
      onPressed: () {
        widget.onPresssed(widget.memberCount);
      },
      style: makeButtonStyle(widget.isSelected),
    );
  }

  ButtonStyle makeButtonStyle(bool isSelected) {
    ButtonStyle buttonStyle;
    if (isSelected) {
      buttonStyle = ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
        foregroundColor: MaterialStateProperty.all(Colors.orange),
      );
    } else {
      buttonStyle = ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      );
    }
    return buttonStyle;
  }
}
