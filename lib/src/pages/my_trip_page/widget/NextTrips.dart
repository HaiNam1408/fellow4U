import 'package:fellow4U/src/widgets/TripCard.dart';
import 'package:flutter/material.dart';

class NextTrips extends StatefulWidget {
  const NextTrips({super.key});

  @override
  State<NextTrips> createState() => _NextTripsState();
}

class _NextTripsState extends State<NextTrips> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        TripCard(
            title: 'Ho Guom Trip',
            image: 'images/thap_rua_hanoi.png',
            avatar: 'images/ha_thu.png',
            location: 'Ha Noi, Vietnam',
            date: 'Feb 2, 2020',
            time: '13:30 - 15:00',
            username: 'Hà Thu',
            actions: ['detail', 'chat', 'pay']),
        TripCard(
            title: 'Ho Chi Minh Mausoleum',
            image: 'images/lang_bac.png',
            avatar: 'images/ha_thu.png',
            location: 'Ha Noi, Vietnam',
            date: 'Feb 2, 2020',
            time: '13:30 - 15:00',
            status: 'waiting',
            username: 'Hà Thu',
            actions: ['detail', 'chat']),
        TripCard(
            title: 'Duc Ba Church',
            image: 'images/duc_ba_church.png',
            avatar: 'images/dai_hung.png',
            location: 'Ho Chi Minh, Vietnam',
            date: 'Jan 30, 2020',
            time: '8:00 - 10:00',
            status: 'bidding',
            username: 'Waiting for offers',
            actions: ['detail', 'chat']),
      ],
    );
  }
}
