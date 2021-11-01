import 'package:flutter/material.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({
    Key? key,
    @required this.label,
    @required this.img,
    @required this.price,
  }) : super(key: key);
  final label;
  final img;
  final price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 160,
      decoration: BoxDecoration(
          color: const Color(0xff92A7BF),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image(
              image: AssetImage(img),
            ),
            const SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label,
                    style:const TextStyle(
                      fontSize: 12,
                    )),
                Text(price,
                    style:const TextStyle(
                      fontSize: 12,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}