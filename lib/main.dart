import 'package:bookly_appl/constants.dart';
import 'package:bookly_appl/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyAppl());
}

class BooklyAppl extends StatelessWidget {
  const BooklyAppl({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplashView(),
    );
  }
}

      