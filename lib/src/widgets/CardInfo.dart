import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String? username;

  const CardInfo(
      {super.key,
      required this.title,
      required this.date,
      required this.time,
      this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.calendar_month),
            SizedBox(width: 6),
            Text(date)
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: [Icon(Icons.schedule), SizedBox(width: 6), Text(time)],
        ),
        SizedBox(height: 4),
        if (username != null && username!.isNotEmpty)
          Row(
            children: [
              Icon(Icons.person_3_outlined),
              SizedBox(width: 6),
              Text(username!)
            ],
          )
      ],
    );
  }
}
