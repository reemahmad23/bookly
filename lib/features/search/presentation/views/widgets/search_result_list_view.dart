
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child:  Text('data'), // BestSellerListViewItem(bookModel: BookModel(volumeInfo: volumeInfo)
          );
        
      },
    );
  }
}
