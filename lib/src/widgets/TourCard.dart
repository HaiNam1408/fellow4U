import 'package:fellow4U/src/widgets/CardInfo.dart';
import 'package:fellow4U/src/widgets/TourBanner.dart';
import 'package:flutter/material.dart';

class TourCard extends StatefulWidget {
  final String title;
  final String image;
  final String status;
  final String date;
  final String time;
  final double price;
  final List actions;
  bool isBookMark;
  int like;

  TourCard(
      {super.key,
      required this.title,
      required this.image,
      required this.date,
      required this.time,
      required this.price,
      this.actions = const [],
      this.status = '',
      this.like = 0,
      this.isBookMark = false});

  @override
  State<TourCard> createState() => _TourCardState();
}

class _TourCardState extends State<TourCard> {
  bool _isFavorite = false;

  void toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
      _isFavorite ? widget.like++ : widget.like--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(1, 1), blurRadius: 5, color: Colors.black38)
            ]),
        child: Column(
          children: [
            TourBanner(
              image: widget.image,
              like: widget.like,
              isBookMark: widget.isBookMark,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(12, 12, 12, 20),
                child: Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardInfo(
                              title: widget.title,
                              date: widget.date,
                              time: widget.time),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: toggleFavorite,
                                    icon: Icon(
                                      _isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Color.fromARGB(255, 0, 206, 165),
                                      size: 30,
                                    )),
                                SizedBox(height: 30),
                                Text(
                                  '\$' + widget.price.toStringAsFixed(2),
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 206, 165),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          )
                        ]),
                  ],
                ))
          ],
        ));
  }
}
