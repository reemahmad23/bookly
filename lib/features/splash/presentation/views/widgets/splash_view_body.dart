import 'package:bookly_appl/core/utlis/assets.dart';
import 'package:bookly_appl/features/splash/presentation/views/widgets/sliding_widget.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
late AnimationController animationController;
late Animation<Offset> slidingAnimation;
  
  @override
  void initState(){
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      );

      slidingAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
      .animate(animationController);

      animationController.forward();
      
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),

          SlidingWidget(
            slidingAnimation: slidingAnimation
            ),
      ],
    );
  }
}
