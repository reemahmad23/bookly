import 'package:bookly_appl/features/home/presentation/views/widgets/ccustom_list_view_item.dart';
import 'package:flutter/material.dart';


class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    
      return SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomListViewItem(
                ),
              );
            }),
      );
  }
}
