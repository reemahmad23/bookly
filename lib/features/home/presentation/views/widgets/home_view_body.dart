import 'package:bookly_appl/core/utlis/assets.dart';
import 'package:bookly_appl/core/utlis/styles.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/ccustom_list_view_item.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
      
          FeaturedBooksListView(),
      
          Text('Best Seller',
          style: Styles.textStyle18,
          
          ),
          const SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ], 
      ),
    );
  }
}

class BestSellerListViewItem  extends StatelessWidget {
  const BestSellerListViewItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
          aspectRatio: 2.5/4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16 ),
              image: DecorationImage(
              fit: BoxFit.fill,
                image: AssetImage(
                  AssetsData.testImage,
                ),
              )),
          ),
        
      ),
      const SizedBox(
        width: 20,
          ),
      Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text('Harry Potter and the Goblet of Fire',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle20,
            ),
          ),
        ],
      )
        ],
      ),
    );
  }
}