import 'package:bookly_appl/constants.dart';
import 'package:bookly_appl/core/utlis/assets.dart';
import 'package:bookly_appl/features/home/presentation/views/home_view.dart';
import 'package:bookly_appl/features/splash/presentation/views/widgets/sliding_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

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

    initSlidingAnimation();

    navigateToHome();
      
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

  AnimationController initSlidingAnimation() {
    return animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView() , 
      transition: Transition.fade , duration: kTransitionDuration); 
    });
  }
}
