import 'package:fellow4U/src/pages/explore_page/widget/NewsCard.dart';
import 'package:flutter/material.dart';

import '../../../mixins/ColorTheme.dart';
import '../../../widgets/Heading.dart';

class TravelNews extends StatelessWidget {
  const TravelNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Heading(title: 'Travel News'),
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
              NewsCard(
                  title: 'New Destination in Danang City',
                  time: 'Feb 5, 2020',
                  image: 'images/cungvanhoathieunhi.png'),
              NewsCard(
                  title: '\$1 Flight Ticket',
                  time: 'Feb 5, 2020',
                  image: 'images/plane_sky.png'),
              NewsCard(
                  title: 'Visit Korea in this Tet Holiday',
                  time: 'Feb 5, 2020',
                  image: 'images/korea.png'),
            ],
          )
        ],
      ),
    );
  }
}
