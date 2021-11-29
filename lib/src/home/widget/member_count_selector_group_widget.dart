import 'package:flutter/material.dart';
import 'package:harry_potter_avalon/src/constants.dart';
import 'package:harry_potter_avalon/src/home/widget/member_count_selector_item_widget.dart';

class MemberCountSelectorGroupWidget extends StatefulWidget {
  final int memberCount;
  final Function onMembercountChange;

  const MemberCountSelectorGroupWidget({
    Key? key,
    required this.memberCount,
    required this.onMembercountChange,
  }) : super(key: key);

  @override
  _MemberCountSelectorState createState() => _MemberCountSelectorState();
}

class _MemberCountSelectorState extends State<MemberCountSelectorGroupWidget> {
  int currentSelected = kDefaultPlayerCount;

  @override
  Widget build(BuildContext context) {
    List<MemberCountSelectorItemWidget> couterItemList =
        makeMemberCountSelectorItemWidgetList();
    return Wrap(
      children: couterItemList,
    );
  }

  List<MemberCountSelectorItemWidget> makeMemberCountSelectorItemWidgetList() {
    List<MemberCountSelectorItemWidget> itemList = [];

    for (int memberCount = kMINPlayerCount;
        memberCount <= kMAXPlayerCount;
        memberCount++) {
      itemList.add(
        MemberCountSelectorItemWidget(
          isSelected: memberCount == currentSelected,
          memberCount: memberCount,
          onPresssed: memberCountItemSelected,
        ),
      );
    }
    return itemList;
  }

  void memberCountItemSelected(int membercount) {
    setState(() {
      currentSelected = membercount;
    });
    widget.onMembercountChange(currentSelected);
  }
}
