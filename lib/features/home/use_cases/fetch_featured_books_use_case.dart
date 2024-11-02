import 'package:bookly_appl/core/errors/failure.dart';
import 'package:bookly_appl/features/home/domain/entities/book_entity.dart';
import 'package:bookly_appl/features/home/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({required this.homeRepo});
  
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    return homeRepo.fetchFeaturedBooks();
  }
}