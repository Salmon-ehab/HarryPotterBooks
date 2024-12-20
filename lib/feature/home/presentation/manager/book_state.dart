import 'package:harrypoterbooks/core/models/book_model.dart';

abstract class BookState {}

class BookInitialState extends BookState {}

class BookLoadingState extends BookState {}

class BookSuccessState extends BookState {
  final List<BookModel> book;

  BookSuccessState(this.book);
}

class BookFailureState extends BookState {
  final String error;

  BookFailureState(this.error);
}
