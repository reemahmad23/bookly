import 'package:bookly_appl/core/utlis/styles.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/ccustom_list_view_item.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}