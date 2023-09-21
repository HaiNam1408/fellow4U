import 'package:fellow4U/widgets/TourCard.dart';
import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        TourCard(
          title: 'Meulbourne Sydney',
          image: 'images/opera_sydney.png',
          schedule: 'Feb 2, 2020',
          time: '3 days',
          price: 600,
          like: 1247,
        ),
        TourCard(
          title: 'Hanoi - Ha Long Bay',
          image: 'images/ha_long_bay.png',
          schedule: 'Jan 30, 2020',
          time: '3 days',
          price: 300,
          like: 1438,
        ),
      ],
    );
  }
}
