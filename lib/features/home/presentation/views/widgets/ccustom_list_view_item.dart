
import 'package:bookly_appl/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .28,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16 ),
            image: DecorationImage(
              image: AssetImage(
                AssetsData.testImage,
              ),
            )),
        ),
      ),
    );
  }
}
