import 'package:flutter/material.dart';

class BubbleStorie extends StatelessWidget {
  final String name;
  BubbleStorie({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            name,
            // style: TextStyle(color: Colors.black),
          ),
        )
      ]),
    );
  }
}
