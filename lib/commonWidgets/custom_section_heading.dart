import 'package:flutter/material.dart';

class SectionHeadings extends StatelessWidget {
  final String heading;
  final double tS;
  final double dW;

  const SectionHeadings(
      {super.key, required this.heading, required this.tS, required this.dW});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: dW * 0.005,
        top: dW * 0.064,
      ),
      child: Text(
        heading,
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 24 * tS,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
