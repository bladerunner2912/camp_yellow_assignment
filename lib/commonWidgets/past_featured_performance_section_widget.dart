import 'package:camp_yellow/commonWidgets/custom_section_heading.dart';
import 'package:camp_yellow/commonWidgets/custom_divider_widget.dart';
import 'package:camp_yellow/commonWidgets/past_performance_tile_widget.dart';
import 'package:camp_yellow/commonWidgets/see_more_less_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PastPerformanceSection extends StatefulWidget {
  final double dW;
  final double dH;
  final double tS;
  List<Map<String, String>> performances;
  PastPerformanceSection(
      {super.key,
      required this.dW,
      required this.dH,
      required this.tS,
      required this.performances});

  @override
  State<PastPerformanceSection> createState() => _PastPerformanceSectionState();
}

class _PastPerformanceSectionState extends State<PastPerformanceSection> {
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
            heading: 'Past featured Performance', tS: widget.tS, dW: widget.dW),
        ...List.generate(
            2,
            (index) => PastPerformanceTile(
                  dW: widget.dW,
                  tS: widget.tS,
                  tileInfo: widget.performances[index],
                )),
        isExpanded
            ? Column(
                children: [
                  ...List.generate(
                      widget.performances.length - 2,
                      (index) => PastPerformanceTile(
                            dW: widget.dW,
                            tS: widget.tS,
                            tileInfo: widget.performances[index + 2],
                          )),
                  SeeLess(onTap: toggleSectionSize),
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
