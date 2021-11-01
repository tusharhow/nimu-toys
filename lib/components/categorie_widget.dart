import 'package:flutter/material.dart';

class CategorieWidget extends StatelessWidget {
  CategorieWidget({
    @required this.label,
  });
  final label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 90,
      decoration: BoxDecoration(
          color: const Color(0xff92A7BF),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}