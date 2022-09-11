// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClanDiscussionTile extends StatelessWidget {
  final double dW;
  final double tS;
  final Map<String, String> discussion;
  const ClanDiscussionTile(
      {super.key,
      required this.dW,
      required this.tS,
      required this.discussion});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dW,
      margin: EdgeInsets.symmetric(vertical: dW * 0.035),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          discussion['chatName']!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.w500,
            fontSize: 16 * tS,
          ),
        ),
        SizedBox(
          height: dW * 0.0125,
        ),
        Text(discussion['messages']!,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16 * tS,
                fontWeight: FontWeight.w500)),
      ]),
    );
  }
}
