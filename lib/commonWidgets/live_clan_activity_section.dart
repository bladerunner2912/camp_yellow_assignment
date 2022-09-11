import 'package:camp_yellow/commonWidgets/custom_divider_widget.dart';
import 'package:camp_yellow/commonWidgets/custom_section_heading.dart';
import 'package:camp_yellow/commonWidgets/live_clan_activity_tile.dart';
import 'package:camp_yellow/commonWidgets/see_more_less_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LiveClanActivitySection extends StatefulWidget {
  final double dW;
  final double tS;
  final List<String> activities;
  const LiveClanActivitySection(
      {super.key,
      required this.dW,
      required this.tS,
      required this.activities});

  @override
  State<LiveClanActivitySection> createState() =>
      _LiveClanActivitySectionState();
}

class _LiveClanActivitySectionState extends State<LiveClanActivitySection> {
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
      child: Column(children: [
        CustomDivider(widget.dW),
        SectionHeadings(
            heading: 'Live Clan activities on platform ',
            tS: widget.tS,
            dW: widget.dW),
        ...List.generate(
            2,
            (index) => LiveClanActivityTile(
                dW: widget.dW, tS: widget.tS, label: widget.activities[index])),
        isExpanded
            ? Column(
                children: [
                  ...List.generate(
                      widget.activities.length - 2,
                      (index) => LiveClanActivityTile(
                          dW: widget.dW,
                          tS: widget.tS,
                          label: widget.activities[index + 2])),
                  SeeLess(onTap: toggleSectionSize)
                ],
              )
            : SeeMore(onTap: toggleSectionSize),
        SizedBox(
          height: widget.dW * 0.064,
        )
      ]),
    );
  }
}
