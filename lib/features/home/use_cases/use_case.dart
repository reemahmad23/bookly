import 'package:bookly_appl/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure , Type>> call([Param param]);
}

class NoParam {}