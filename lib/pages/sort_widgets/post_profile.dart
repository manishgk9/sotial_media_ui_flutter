import 'package:flutter/material.dart';

class Postsprofile extends StatelessWidget {
  const Postsprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: GestureDetector(
        onTap: () {
          print('Denger');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Postsprofile()));
        },
        child: Container(
          height: MediaQuery.sizeOf(context).width / 3,
          width: MediaQuery.sizeOf(context).width / 3,
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }
}
