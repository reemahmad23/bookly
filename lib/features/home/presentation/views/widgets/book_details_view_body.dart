import 'package:bookly_appl/core/utlis/styles.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/ccustom_list_view_item.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .34),
            child: CustomListViewItem(),
          ),
          SizedBox(
          height: 10,
        ),
        Text(
          'Amarita & Zicola',
          style: Styles.textStyle30,
        ),
        SizedBox(
          height: 3,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Amr Abdelhamied',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 10,
        ),
        BookAction(),

        Text(
          'You Can Also Like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SimilarBooksListView(),

        SizedBox(
          height: 40,
        ),
        ],
      ),
    );
  }
}

