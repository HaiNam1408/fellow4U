import 'package:fellow4U/src/pages/explore_page/widget/JourneyCard.dart';
import 'package:fellow4U/src/widgets/Heading.dart';
import 'package:flutter/material.dart';

class TopJourneys extends StatefulWidget {
  const TopJourneys({super.key});

  @override
  State<TopJourneys> createState() => _TopJourneysState();
}

class _TopJourneysState extends State<TopJourneys> {
  List<Map<String, dynamic>> journeys = [
    {
      "id": "1",
      "title": "Ho Guom Trip",
      "image": "images/thap_rua_hanoi.png",
      "date": "Feb 2, 2020",
      "time": "4 days",
      "like": 1242,
      "rating": 4.7,
      "price": 300
    },
    {
      "id": "1",
      "title": "Quoc Tu Giam Temple",
      "image": "images/van_mieu_quoc_tu_giam.png",
      "date": "Feb 2, 2020",
      "time": "3 days",
      "like": 2647,
      "rating": 5.0,
      "price": 400
    },
    {
      "id": "1",
      "title": "Hanoi - Ha Long Bay",
      "image": "images/ha_long_bay.png",
      "date": "Feb 2, 2020",
      "time": "3 days",
      "like": 1447,
      "rating": 4.2,
      "price": 400
    },
    {
      "id": "1",
      "title": "Da Nang - Ba Na",
      "image": "images/ba_na_hoi_an.png",
      "date": "Feb 2, 2020",
      "time": "3 days",
      "like": 947,
      "rating": 4.0,
      "price": 350
    }
  ];

  List<Widget> renderTopJourney() {
    List<Widget> result = [];

    journeys.sort((a, b) => b["like"].compareTo(a["like"]));

    for (int i = 0; i < journeys.length; i++) {
      result.add(
        JourneyCard(
            image: journeys[i]["image"],
            title: journeys[i]["title"],
            date: journeys[i]["date"],
            time: journeys[i]["time"],
            like: journeys[i]["like"],
            rating: journeys[i]["rating"].toDouble(),
            price: journeys[i]["price"].toDouble()),
      );
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Heading(title: 'Top Journeys'),
        ),
        SizedBox(height: 4),
        SizedBox(
          height: 330,
          child: ListView(
            padding: EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            children: renderTopJourney(),
          ),
        )
      ],
    );
  }
}
