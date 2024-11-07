part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState  {
  const FeaturedBooksState();

  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}



  class FeaturedBooksLoading extends FeaturedBooksState {}


  class FeaturedBooksFailure extends FeaturedBooksState {
    final String errMessage;

  FeaturedBooksFailure(this.errMessage);
    
  }

  class FeaturedBooksSuccess extends FeaturedBooksState {
    final List<BookEntity> books;

  const FeaturedBooksSuccess(this.books);

    
  }