import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';

class CustomDivider extends StatelessWidget {
  final double dW;

  const CustomDivider(this.dW, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dW,
      height: dW * 0.008,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.white,
      ),
    );
  }
}
