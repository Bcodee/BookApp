import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/book.dart';

class AddBookScreen extends StatelessWidget {
  TextEditingController ctitle = TextEditingController();
  TextEditingController cAuthor = TextEditingController();
  TextEditingController cImage = TextEditingController();
  TextEditingController cPublishedDate = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final allBooks = Provider.of<BookModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Book"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            //name,aurthor,image,publishDate
            TextFormField(
              controller: ctitle,
              decoration: InputDecoration(labelText: "Book Name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter Book Name";
                }
                return null;
              },
            ),
            TextFormField(
              controller: cAuthor,
              decoration: InputDecoration(labelText: "Author Name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter Author Name";
                }
                return null;
              },
            ),
            TextFormField(
              controller: cImage,
              decoration: InputDecoration(labelText: "Book Image"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter Author Name";
                }
                return null;
              },
            ),
            TextFormField(
              controller: cPublishedDate,
              decoration: InputDecoration(labelText: "Publish Date"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter Author Name";
                }
                return null;
              },
            ),
            OutlinedButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  allBooks.add(Book(
                      title: ctitle.text,
                      author: cAuthor.text,
                      image: cImage.text,
                      publishDate: cPublishedDate.text));
                }
                Navigator.pop(context);
              },
              child: Text("Add Book"),
            ),
          ],
        ),
      ),
    );
  }
}
