import 'package:dartz/dartz.dart';
import 'package:harrypoterbooks/core/errors/failure.dart';
import 'package:harrypoterbooks/core/models/book_model.dart';
import 'package:harrypoterbooks/core/network/api_service.dart';
import 'package:harrypoterbooks/feature/home/data/repo/book_repo.dart';

class BookRepoImplementation implements BookRepo {
  final ApiService apiService;
  List<BookModel> books = [];

  BookRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> getBooks() async {
    try {
      var dataFromJson = await apiService.getData(endPoint: "/v1/books");
      for (var item in dataFromJson["data"]) {
        var attributes = item["attributes"];
        books.add(BookModel.fromJson(attributes));
      }
      return right(books);
    } catch (e) {
      return left(ServerError(e.toString()));
    }
  }
}
