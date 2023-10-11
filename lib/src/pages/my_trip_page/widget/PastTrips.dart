import 'package:fellow4U/src/widgets/TripCard.dart';
import 'package:flutter/material.dart';

class PastTrips extends StatefulWidget {
  const PastTrips({super.key});

  @override
  State<PastTrips> createState() => _PastTripsState();
}

class _PastTripsState extends State<PastTrips> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        TripCard(
            title: 'Quoc Tu Giam Temple',
            image: 'images/van_mieu_quoc_tu_giam.png',
            avatar: 'images/ha_thu.png',
            location: 'Ha Noi, Vietnam',
            date: 'Feb 2, 2020',
            time: '8:00 - 10:00',
            username: 'Hà Thu'),
        TripCard(
            title: 'Dinh Doc Lap',
            image: 'images/dinh_doc_lap.png',
            avatar: 'images/dai_hung.png',
            location: 'Ho Chi Minh, Vietnam',
            date: 'Jan 30, 2020',
            time: '8:00 - 10:00',
            username: 'Waiting for offers'),
      ],
    );
  }
}
