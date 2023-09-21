import 'package:fellow4U/widgets/CardInfo.dart';
import 'package:fellow4U/widgets/TourBanner.dart';
import 'package:flutter/material.dart';

class TourCard extends StatefulWidget {
  final String title;
  final String image;
  final int like;
  final String status;
  final String schedule;
  final String time;
  final double price;
  final List actions;

  const TourCard(
      {super.key,
      required this.title,
      required this.image,
      required this.schedule,
      required this.time,
      required this.price,
      this.actions = const [],
      this.status = '',
      required this.like});

  @override
  State<TourCard> createState() => _TourCardState();
}

class _TourCardState extends State<TourCard> {
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
                              schedule: widget.schedule,
                              time: widget.time),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.heart_broken,
                                  color: Color.fromARGB(255, 0, 206, 165),
                                  size: 30,
                                ),
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
