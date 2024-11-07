part of 'newest_books_cubit.dart';

sealed class NewestBooksState  {
  const NewestBooksState();

  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}



  class NewestBooksLoading extends NewestBooksState {}


  class NewestBooksFailure extends NewestBooksState {
    final String message;

  const NewestBooksFailure( this.message);
    
  }

  class NewestBooksSuccess extends NewestBooksState {

    final List<BookEntity> books;

  const NewestBooksSuccess( this.books);

    
  }