import 'package:fellow4U/src/mixins/ColorTheme.dart';
import 'package:fellow4U/src/widgets/Heading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/TourCard.dart';

class FeaturedTours extends StatefulWidget {
  const FeaturedTours({super.key});

  @override
  State<FeaturedTours> createState() => _FeaturedToursState();
}

class _FeaturedToursState extends State<FeaturedTours> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Heading(title: 'Featured Tours'),
              TextButton(
                  onPressed: null,
                  child: Text(
                    'SEE MORE',
                    style: TextStyle(fontSize: 14, color: ColorsTheme.primary),
                  ))
            ],
          ),
          SizedBox(height: 10),
          Column(
            children: [
              TourCard(
                title: 'Da Nang - Ba Na',
                image: 'images/ba_na_hoi_an.png',
                date: 'Jan 30, 2020',
                time: '3 days',
                price: 300,
                like: 1438,
              ),
              TourCard(
                title: 'Meulbourne Sydney',
                image: 'images/opera_sydney.png',
                date: 'Feb 2, 2020',
                time: '3 days',
                price: 600,
                like: 1247,
              ),
              TourCard(
                title: 'Hanoi - Ha Long Bay',
                image: 'images/ha_long_bay.png',
                date: 'Jan 30, 2020',
                time: '3 days',
                price: 300,
                like: 1438,
              ),
            ],
          )
        ],
      ),
    );
  }
}
