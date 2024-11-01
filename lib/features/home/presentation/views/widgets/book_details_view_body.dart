import 'package:bookly_appl/features/home/presentation/views/widgets/ccustom_list_view_item.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
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
        ],
      ),
    );
  }
}