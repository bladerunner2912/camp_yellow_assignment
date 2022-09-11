import 'package:camp_yellow/commonWidgets/clan_discussion_tile_widget.dart';
import 'package:camp_yellow/commonWidgets/custom_divider_widget.dart';
import 'package:camp_yellow/commonWidgets/custom_section_heading.dart';
import 'package:camp_yellow/commonWidgets/see_more_less_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClanDiscussionSection extends StatefulWidget {
  final double dW;
  final double tS;
  final List<Map<String, String>> discussions;
  const ClanDiscussionSection(
      {super.key,
      required this.dW,
      required this.tS,
      required this.discussions});

  @override
  State<ClanDiscussionSection> createState() => _ClanDiscussionSectionState();
}

class _ClanDiscussionSectionState extends State<ClanDiscussionSection> {
  bool isExpanded = false;

  toggleSectionSize() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.dW * 0.02),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomDivider(widget.dW),
        SectionHeadings(
            heading: 'Clan Discussion', tS: widget.tS, dW: widget.dW),
        ...List.generate(
            2,
            (index) => ClanDiscussionTile(
                dW: widget.dW,
                tS: widget.tS,
                discussion: widget.discussions[index])),
        isExpanded
            ? Column(
                children: [
                  ...List.generate(
                      widget.discussions.length - 2,
                      (index) => ClanDiscussionTile(
                          dW: widget.dW,
                          tS: widget.tS,
                          discussion: widget.discussions[index + 2])),
                  SeeLess(onTap: toggleSectionSize)
                ],
              )
            : SeeMore(
                onTap: toggleSectionSize,
              ),
        SizedBox(
          height: widget.dW * 0.064,
        )
      ]),
    );
  }
}
