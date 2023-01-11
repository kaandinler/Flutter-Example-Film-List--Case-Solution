import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imdbID;

  DetailsPage({required this.imdbID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(imdbID),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                'https://cdn1.ntv.com.tr/gorsel/FnJJEiy8iUuUxQhsHBXNqw.jpg?width=1200&height=675&mode=crop&scale=both&v=1651047635418',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "asd",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
