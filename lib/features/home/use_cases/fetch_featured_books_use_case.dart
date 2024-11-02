import 'package:bookly_appl/core/errors/failure.dart';
import 'package:bookly_appl/features/home/domain/entities/book_entity.dart';
import 'package:bookly_appl/features/home/repo/home_repo.dart';
import 'package:bookly_appl/features/home/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam > {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({required this.homeRepo});

  //FetchFeaturedBooksUseCase({required this.homeRepo});
  
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}

abstract class UseCase<Type, Param> {
  Future<Either<Failure , Type>> call([NoParam param]);
}

