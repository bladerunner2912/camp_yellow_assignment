import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PastPerformanceTile extends StatelessWidget {
  final double dW;
  final double tS;
  Map<String, String> tileInfo;

  PastPerformanceTile(
      {super.key, required this.dW, required this.tS, required this.tileInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: dW * 0.05),
      width: dW,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: dW * 0.35,
            height: dW * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      tileInfo['articlePic']!,
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
              width: dW * 0.5,
              child: Text(
                tileInfo['articleHeading']!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.w500,
                    fontSize: 20 * tS),
              ))
        ],
      ),
    );
  }
}
