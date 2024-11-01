
import 'package:bookly_appl/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment = MainAxisAlignment.start });

final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 18,
        ),
        SizedBox(
          width: 8,
        ),
        Text('4.9',
        style: Styles.textStyle16,
        ),
        SizedBox(
          width: 8,
        ),
        Text('(245)',
        style: Styles.textStyle14.copyWith(
          color: Color(0xff707070)
        ),
        ),
      ],
    );
  }
}