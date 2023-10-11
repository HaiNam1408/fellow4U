import 'package:fellow4U/src/widgets/CardMark.dart';
import 'package:flutter/material.dart';

class CardBanner extends StatelessWidget {
  final String image;
  final String location;
  final String status;
  const CardBanner(
      {super.key,
      required this.image,
      required this.location,
      this.status = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.all(12),
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardMark(status: status),
            Row(children: [
              Icon(Icons.location_pin, color: Colors.white),
              Text(location, style: TextStyle(color: Colors.white))
            ]),
          ],
        ));
  }
}
