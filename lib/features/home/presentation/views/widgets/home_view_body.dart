import 'package:bookly_appl/core/utlis/assets.dart';
import 'package:bookly_appl/core/utlis/styles.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/ccustom_list_view_item.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_appl/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
      return CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
            
                FeaturedBooksListView(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Best Seller',
                  style: Styles.textStyle18,
                  
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ]
            ),
      ),

      SliverFillRemaining(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BestSellerListView(),
        ),
      ),
      ]
  
    );
        
      

    
  }
}

