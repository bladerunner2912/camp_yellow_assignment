import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LiveClanActivityTile extends StatelessWidget {
  final double dW;
  final double tS;
  final String label;
  const LiveClanActivityTile(
      {super.key, required this.dW, required this.tS, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: dW * 0.04),
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiorhjwazWRkRA28wXdXQSdu9O5MUtosp4XA&usqp=CAU'))),
      height: dW * 0.3,
      width: dW,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
              color: Colors.white,
              fontSize: 18 * tS,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
