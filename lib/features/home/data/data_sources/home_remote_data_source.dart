import 'package:bookly_appl/core/utlis/api_service.dart';
import 'package:bookly_appl/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_appl/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future< List<BookEntity>> fetchFeaturedBooks();
  Future< List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async{
    var data = await apiService.get(
      endPoint: 'volumes?q=programming&Filtering=free-ebooks'
      );

    List<BookEntity> books = getBooksList(data);
    
    return books;
  }

  
  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
      endPoint: 'volumes?q=programming&Filtering=free-ebooks&sorting=newest'
      );

    List<BookEntity> books = getBooksList(data);
    return books;
  }

List<BookEntity> getBooksList (Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for( var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

}