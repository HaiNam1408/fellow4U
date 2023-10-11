import 'package:flutter/material.dart';
import '../../../widgets/CardInfo.dart';
import '../../../widgets/TourBanner.dart';

class JourneyCard extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final String time;
  final double price;
  final double rating;
  final like;
  JourneyCard(
      {super.key,
      required this.image,
      required this.title,
      required this.date,
      required this.time,
      required this.price,
      this.like = 0,
      this.rating = 5});

  @override
  State<JourneyCard> createState() => _JourneyCardState();
}

class _JourneyCardState extends State<JourneyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8, 20, 8),
      width: 280,
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
            rating: widget.rating,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardInfo(
                    title: widget.title, date: widget.date, time: widget.time),
                Text(
                  '\$' + widget.price.toStringAsFixed(2),
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 206, 165),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
