import 'package:flutter/material.dart';

class SelectColors extends StatelessWidget {
  const SelectColors({
    Key? key,
    @required this.color,
  }) : super(key: key);
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: 32,
      width: 32,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
    );
  }
}
