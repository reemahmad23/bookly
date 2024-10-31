
import 'package:flutter/material.dart';

class SlidingWidget extends StatelessWidget {
  const SlidingWidget({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: ( context, _) {  
      return SlideTransition(
        position: slidingAnimation ,
        child: const Text('Reed Free Books',
        textAlign: TextAlign.center,
        ),
      );
      }
    );
  }
}