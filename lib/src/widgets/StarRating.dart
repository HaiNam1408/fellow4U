import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      5,
      (index) {
        if (index < rating.floor()) {
          return Icon(Icons.star, color: Colors.amber[400], size: 21);
        } else if (index == rating.floor() && rating % 1 > 0) {
          return Icon(
            Icons.star_half_rounded,
            size: 21,
            color: Colors.amber[400],
          );
        } else {
          return Icon(
            Icons.star_border_rounded,
            size: 21,
            color: Colors.amber[400],
          );
        }
      },
    ));
  }
}
