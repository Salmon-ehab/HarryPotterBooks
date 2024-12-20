import 'package:harrypoterbooks/core/asset/images.dart';

class BookModel {
  String? title;
  String? author;
  String? cover;
  String? dedication;
  String? summary;
  String? releaseDate;
  int? pages;

  BookModel({
    this.title,
    this.author,
    this.cover,
    this.dedication,
    this.summary,
    this.releaseDate,
    this.pages,
  });

  factory BookModel.fromJson(Map<String, dynamic> jsonData) {
    return BookModel(
      title: jsonData["title"] ?? "Harry Potter",
      author: jsonData["author"] ?? "J. K. Rowling",
      cover: jsonData["cover"] ?? AppImages.defaultImage,
      dedication: jsonData["dedication"] ?? "",
      summary: jsonData["summary"] ?? "",
      releaseDate: jsonData["release_date"] ?? "",
      pages: jsonData["pages"] ?? jsonData["pages"] as String?,
    );
  }
}
