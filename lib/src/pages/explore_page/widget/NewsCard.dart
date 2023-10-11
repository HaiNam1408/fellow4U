import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String time;
  final String image;
  const NewsCard(
      {super.key,
      required this.title,
      required this.time,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Text(time),
          SizedBox(
            height: 4,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              image: AssetImage(image),
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
