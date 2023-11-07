import 'package:fellow4U/src/network/TourRequest.dart';
import 'package:fellow4U/src/pages/explore_page/widget/JourneyCard.dart';
import 'package:fellow4U/src/widgets/Heading.dart';
import 'package:flutter/material.dart';
import 'package:fellow4U/src/network/TourRequest.dart';

import '../../../models/Tour.dart';

class TopJourneys extends StatefulWidget {
  const TopJourneys({super.key});

  @override
  State<TopJourneys> createState() => _TopJourneysState();
}

class _TopJourneysState extends State<TopJourneys> {
  List<Tour> tourData = [];

  @override
  void initState() {
    super.initState();
    TourRequest.fetchTours().then((dataFromServer) => {
          setState(() {
            tourData = dataFromServer;
          })
        });
  }

  List<Widget> renderTopJourney() {
    List<Widget> result = [];
    tourData.sort((a, b) => b.like ?? 0.compareTo(a.like ?? 0));

    for (int i = 0; i < tourData.length; i++) {
      result.add(
        JourneyCard(
            image: tourData[i].image ?? '',
            title: tourData[i].title ?? '',
            date: tourData[i].date ?? '',
            time: tourData[i].time ?? '',
            like: tourData[i].like ?? 0,
            rating: tourData[i].ratting ?? 5.toDouble(),
            price: tourData[i].price ?? 0.toDouble()),
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
