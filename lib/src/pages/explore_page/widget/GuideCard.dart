import 'package:fellow4U/src/mixins/ColorTheme.dart';
import 'package:fellow4U/src/widgets/StarRating.dart';
import 'package:flutter/material.dart';

class GuideCard extends StatelessWidget {
  final String image;
  final double rating;
  final int like;
  final String name;
  final String location;
  const GuideCard(
      {super.key,
      required this.image,
      this.rating = 5,
      this.like = 0,
      required this.name,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: AssetImage(image),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  left: 8,
                  bottom: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StarRating(rating: rating),
                      Text(
                        like.toString() + ' likes',
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      )
                    ],
                  ))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w600, height: 2),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: ColorsTheme.primary,
                  ),
                  Text(
                    location,
                    style: TextStyle(color: ColorsTheme.primary, fontSize: 12),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
