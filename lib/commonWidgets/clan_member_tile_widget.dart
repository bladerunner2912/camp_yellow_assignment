import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClanMemberTile extends StatelessWidget {
  final double dW;
  final double tS;
  Map<String, String> member;
  ClanMemberTile(
      {super.key, required this.dW, required this.tS, required this.member});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: dW * 0.04),
      width: dW,
      child: Row(
        children: [
          CircleAvatar(
            radius: dW * 0.075,
            backgroundImage: NetworkImage(member['memberPic']!),
          ),
          SizedBox(
            width: dW * 0.06,
          ),
          Text(
            '${member['memberName']} - ',
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.w500,
              fontSize: 18 * tS,
            ),
          ),
          Text(
            '${member['memberPosition']}',
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.w500,
              fontSize: 18 * tS,
            ),
          ),
        ],
      ),
    );
  }
}
