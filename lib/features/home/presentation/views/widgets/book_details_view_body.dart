import 'package:bookly_appl/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomBookDetailsAppBar(),
      ],
    );
  }
}