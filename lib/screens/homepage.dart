import 'package:bookapp/Models/book.dart';
import 'package:bookapp/screens/addBook.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final allBooks = Provider.of<BookModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Book App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddBookScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: allBooks.books.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(children: [
              Image.network(allBooks.books[index].image),
              Text(
                allBooks.books[index].title,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              ),
              Text(
                allBooks.books[index].author,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              Text(
                allBooks.books[index].publishDate.toString(),
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
            ]),
          );
        },
      ),
    );
  }
}
