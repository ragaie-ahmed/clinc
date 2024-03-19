import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 4,
      itemSize: 30,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.all(0.5),
      itemBuilder: (context, _) => Icon(
        Icons.star,

        color: Theme.of(context).colorScheme.error,
        weight: 20,
      ),
      onRatingUpdate: (rating) {
      },
    );
  }
}
