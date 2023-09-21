import 'package:fellow4U/widgets/BorderAvatar.dart';
import 'package:fellow4U/widgets/CardBanner.dart';
import 'package:fellow4U/widgets/CardButton.dart';
import 'package:fellow4U/widgets/CardInfo.dart';
import 'package:flutter/material.dart';

class TripCard extends StatefulWidget {
  final String title;
  final String image;
  final String location;
  final String status;
  final String schedule;
  final String time;
  final String username;
  final String avatar;
  final List actions;

  const TripCard(
      {super.key,
      required this.title,
      required this.image,
      required this.location,
      required this.schedule,
      required this.time,
      required this.username,
      required this.avatar,
      this.actions = const [],
      this.status = ''});

  @override
  State<TripCard> createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
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
            CardBanner(
              image: widget.image,
              location: widget.location,
              status: widget.status,
            ),
            Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardInfo(
                              title: widget.title,
                              schedule: widget.schedule,
                              time: widget.time,
                              username: widget.username),
                          BorderAvatar(avatar: widget.avatar),
                        ]),
                  ],
                )),
            Container(
              margin: EdgeInsets.fromLTRB(12, 0, 12, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CardButton(
                    actions: widget.actions,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
