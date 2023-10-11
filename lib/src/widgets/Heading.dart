import 'package:flutter/cupertino.dart';

class Heading extends StatelessWidget {
  final String title;

  const Heading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
    );
  }
}
