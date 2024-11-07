import 'package:bookly_appl/constants.dart';
import 'package:bookly_appl/core/utlis/api_service.dart';
import 'package:bookly_appl/core/utlis/app_router.dart';
import 'package:bookly_appl/core/utlis/functions/setup_service_locator.dart';
import 'package:bookly_appl/core/utlis/simple_bloc_observer.dart';
import 'package:bookly_appl/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_appl/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_appl/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_appl/features/home/domain/entities/book_entity.dart';
import 'package:bookly_appl/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_appl/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_appl/features/home/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_appl/features/home/use_cases/fetch_newest_books_use_case.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
    await Hive.openBox<BookEntity>(kFeaturedBox);
    await Hive.openBox<BookEntity>(kNewestBox);
    Bloc.observer = SimpleBlocObserver();
    runApp(const BooklyAppl());
}


class BooklyAppl extends StatelessWidget {
  const BooklyAppl({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context){
          return FeaturedBooksCubit(FetchFeaturedBooksUseCase(
            homeRepo: getIt.get<HomeRepoImpl>(),
            ),
            );
        }),

        BlocProvider(create: (context){
          return NewestBooksCubit(FetchNewestBooksUseCase(
            homeRepo: getIt.get<HomeRepoImpl>(),
            ),
            );
        }),
      ],

      child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
      ),
    );
  }
}
