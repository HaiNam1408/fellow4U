import 'package:fellow4U/widgets/TripCard.dart';
import 'package:flutter/material.dart';

class CurrentTrips extends StatefulWidget {
  const CurrentTrips({super.key});

  @override
  State<CurrentTrips> createState() => _CurrentTripsState();
}

class _CurrentTripsState extends State<CurrentTrips> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        TripCard(
            title: 'Dragon Bridge Trip',
            image: 'images/dragon_bridge_02.png',
            avatar: 'images/Tuan_Tran_2.png',
            location: 'Da Nang, Vietnam',
            schedule: 'Jan 30, 2020',
            time: '13:30 - 15:00',
            status: 'finished',
            username: 'Tuan Tran',
            actions: ['detail']),
      ],
    );
  }
}
