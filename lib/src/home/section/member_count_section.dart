import 'package:flutter/material.dart';
import 'package:harry_potter_avalon/src/constants.dart';
import 'package:harry_potter_avalon/src/home/widget/home_text_widget.dart';
import 'package:harry_potter_avalon/src/home/widget/member_count_selector_group_widget.dart';

class MemberCountSection extends StatefulWidget {
  const MemberCountSection({Key? key}) : super(key: key);

  @override
  _MemberCountSection createState() => _MemberCountSection();
}

class _MemberCountSection extends State<MemberCountSection> {
  int selectedMemberCount = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: double.infinity,
      child: Column(
        children: [
          const HomeTextWidget(text: "마법사 전격 모집중"),
          MemberCountSelectorGroupWidget(
            memberCount: selectedMemberCount,
            onMembercountChange: setSelecteMemberCount,
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepOrange),
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(MediaQuery.of(context).size.width, kButtonHeight))),
            child: const HomeTextWidget(text: "게임시작하기"),
            onPressed: () {
              debugPrint(
                  "selectedMemberCount" + selectedMemberCount.toString());
            },
          ),
        ],
      ),
    );
  }

  void setSelecteMemberCount(int newMemberCount) {
    setState(() {
      selectedMemberCount = newMemberCount;
    });
  }
}
