import 'package:fellow4U/src/pages/explore_page/widget/GuideCard.dart';
import 'package:flutter/material.dart';

import '../../../mixins/ColorTheme.dart';
import '../../../widgets/Heading.dart';

class BestGuides extends StatelessWidget {
  const BestGuides({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Heading(title: 'Best Guides'),
              TextButton(
                  onPressed: null,
                  child: Text(
                    'SEE MORE',
                    style: TextStyle(fontSize: 14, color: ColorsTheme.primary),
                  ))
            ],
          ),
          SizedBox(height: 10),
          GridView.count(
            physics: PageScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            children: [
              GuideCard(
                  image: 'images/Tuan_Tran_2.png',
                  name: 'Tuan Tran',
                  location: 'Danang, Vietnam',
                  like: 534,
                  rating: 4.4),
              GuideCard(
                  image: 'images/ha_thu.png',
                  name: 'Ha Thu',
                  location: 'Hanoi, Vietnam',
                  like: 234,
                  rating: 4.4),
              GuideCard(
                  image: 'images/thuy_uyen.png',
                  name: 'Thuy Uyen',
                  location: 'Danang, Vietnam',
                  like: 456,
                  rating: 4.4),
              GuideCard(
                  image: 'images/dai_hung.png',
                  name: 'Dai Hung',
                  location: 'Hue, Vietnam',
                  like: 756,
                  rating: 4.4),
            ],
          ),
        ],
      ),
    );
  }
}
