
import 'package:bookly_appl/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDDF),
        ),
        Text('4.9',
        style: Styles.textStyle16,
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