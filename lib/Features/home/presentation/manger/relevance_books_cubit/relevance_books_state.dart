part of 'relevance_books_cubit.dart';

@immutable
abstract class RelevanceBooksState {}

class RelevanceBooksInitial extends RelevanceBooksState {}
class RelevanceBooksLoading extends RelevanceBooksState {}
class RelevanceBooksSuccess extends RelevanceBooksState {
  final List<BookModel>books;

  RelevanceBooksSuccess(this.books);
}
class RelevanceBooksFailure extends RelevanceBooksState {
  final String errorMessage;

   RelevanceBooksFailure(this.errorMessage);
}

