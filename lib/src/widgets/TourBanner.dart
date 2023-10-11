import 'package:fellow4U/src/widgets/StarRating.dart';
import 'package:flutter/material.dart';

class TourBanner extends StatefulWidget {
  final String image;
  final double rating;
  int like;
  bool isBookMark;

  TourBanner(
      {super.key,
      required this.image,
      this.like = 0,
      this.rating = 5,
      this.isBookMark = false});

  @override
  State<TourBanner> createState() => _TourBannerState();
}

class _TourBannerState extends State<TourBanner> {
  void toggleBookMark() {
    setState(() {
      widget.isBookMark = !widget.isBookMark;
    });
  }

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
                IconButton(
                    onPressed: toggleBookMark,
                    icon: Icon(
                      widget.isBookMark
                          ? Icons.bookmark
                          : Icons.bookmark_border_outlined,
                      color: Colors.white,
                    ))
              ],
            ),
            Row(children: [
              StarRating(rating: widget.rating),
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
