import 'package:camp_yellow/commonWidgets/clan_member_tile_widget.dart';
import 'package:camp_yellow/commonWidgets/custom_divider_widget.dart';
import 'package:camp_yellow/commonWidgets/custom_section_heading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClanMembersSection extends StatelessWidget {
  final double dW;
  final double tS;
  final List<Map<String, String>> members;
  const ClanMembersSection(
      {super.key, required this.dW, required this.tS, required this.members});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: dW * 0.02),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomDivider(dW),
        SectionHeadings(heading: 'Clan Members', tS: tS, dW: dW),
        ...List.generate(2,
            (index) => ClanMemberTile(dW: dW, tS: tS, member: members[index]))
      ]),
    );
  }
}
