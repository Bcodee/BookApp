import 'package:flutter/cupertino.dart';

class Book {
  final String title;
  final String author;
  final String image;
  final String publishDate;

  Book({
    required this.title,
    required this.author,
    required this.image,
    required this.publishDate,
  });
}

class BookModel extends ChangeNotifier {
  final List<Book> _books = [];

  List<Book> get books => _books;

  void add(Book b) {
    _books.add(b);
    notifyListeners();
  }
}
