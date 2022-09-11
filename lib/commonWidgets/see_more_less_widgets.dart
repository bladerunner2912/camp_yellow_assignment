import 'package:flutter/material.dart';

class SeeLess extends StatelessWidget {
  final Function onTap;
  const SeeLess({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: InkWell(
          onTap: () => onTap(),
          child: Center(
              child: Text(
            'See Less',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ))),
    );
  }
}

class SeeMore extends StatelessWidget {
  final Function onTap;
  const SeeMore({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: InkWell(
          onTap: () => onTap(),
          child: Center(
              child: Text(
            'See More',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ))),
    );
  }
}
