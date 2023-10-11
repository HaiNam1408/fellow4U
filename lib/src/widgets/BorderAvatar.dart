import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BorderAvatar extends StatelessWidget {
  String avatar;
  double height;
  double width;
  BorderAvatar(
      {super.key, required this.avatar, this.height = 80, this.width = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage(avatar),
              fit: BoxFit.cover,
            ),
            border:
                Border.all(color: Color.fromARGB(255, 0, 206, 165), width: 4)));
  }
}
