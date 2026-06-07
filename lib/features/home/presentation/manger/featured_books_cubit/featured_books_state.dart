part of 'featured_books_cubit.dart';

sealed class FueturedBooksState extends Equatable {
  const FueturedBooksState();

  @override
  List<Object> get props => [];
}

final class FueturedBooksInitial extends FueturedBooksState {}

final class FueturedBooksLoading extends FueturedBooksState {}

final class FueturedBooksSuccess extends FueturedBooksState {
  final List<BooklyModel> books;

  const FueturedBooksSuccess(this.books);
}

final class FueturedBooksFailure extends FueturedBooksState {
  final String errMessage;

  const FueturedBooksFailure(this.errMessage);
}
