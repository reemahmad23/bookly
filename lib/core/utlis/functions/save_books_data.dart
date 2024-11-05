import 'package:bookly_appl/constants.dart';
import 'package:bookly_appl/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksData(List<BookEntity> books, String boxName) {
    var box = Hive.box(kFeaturedBox);
    box.addAll(books);
}