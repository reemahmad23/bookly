import 'package:bookly_appl/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}