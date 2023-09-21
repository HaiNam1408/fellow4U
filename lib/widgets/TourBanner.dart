import 'package:flutter/material.dart';

class TourBanner extends StatefulWidget {
  final String image;
  final int like;
  const TourBanner({super.key, required this.image, required this.like});

  @override
  State<TourBanner> createState() => _TourBannerState();
}

class _TourBannerState extends State<TourBanner> {
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
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Icon(
                  Icons.bookmark,
                  color: Colors.white,
                )
              ],
            ),
            Row(children: [
              Icon(Icons.star, color: Colors.amber[400], size: 21),
              Icon(Icons.star, color: Colors.amber[400], size: 21),
              Icon(Icons.star, color: Colors.amber[400], size: 21),
              Icon(Icons.star, color: Colors.amber[400], size: 21),
              Icon(Icons.star, color: Colors.amber[400], size: 21),
              SizedBox(width: 4),
              Text(
                widget.like.toString() + ' likes',
                style: TextStyle(color: Colors.white, fontSize: 12),
              )
            ]),
          ],
        ));
  }
}
