import 'package:dartz/dartz.dart';
import 'package:harrypoterbooks/core/errors/failure.dart';
import 'package:harrypoterbooks/core/models/book_model.dart';

abstract class BookRepo {
  Future<Either<Failure, List<BookModel>>> getBooks();
}
