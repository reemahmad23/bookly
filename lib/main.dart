import 'package:bookly_appl/constants.dart';
import 'package:bookly_appl/core/utlis/app_router.dart';
import 'package:bookly_appl/features/home/domain/entities/book_entity.dart';
import 'package:bookly_appl/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  runApp(const BooklyAppl());
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
    await Hive.openBox<BookEntity>(kFeaturedBox);
    await Hive.openBox<BookEntity>(kNewestBox);
}

class BooklyAppl extends StatelessWidget {
  const BooklyAppl({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
