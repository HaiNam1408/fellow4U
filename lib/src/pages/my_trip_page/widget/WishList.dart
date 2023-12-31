import 'package:fellow4U/src/widgets/TourCard.dart';
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
          image:
              'https://res.cloudinary.com/dhbsehvi5/image/upload/v1697907304/Fellow4U/van_mieu_quoc_tu_giam.png',
          date: 'Feb 2, 2020',
          time: '3 days',
          price: 600,
          like: 1247,
          isBookMark: true,
        ),
        TourCard(
          title: 'Hanoi - Ha Long Bay',
          image:
              'https://res.cloudinary.com/dhbsehvi5/image/upload/v1697907293/Fellow4U/ha_long_bay.png',
          date: 'Jan 30, 2020',
          time: '3 days',
          price: 300,
          like: 1438,
          isBookMark: true,
        ),
      ],
    );
  }
}
