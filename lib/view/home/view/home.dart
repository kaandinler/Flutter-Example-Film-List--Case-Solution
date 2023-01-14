import 'package:flutter/material.dart';

import 'package:flutter_case_deneme_2/core/constants/constants.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_fetch_view_model.dart';
import 'package:flutter_case_deneme_2/view/home/components/movie_list_widget.dart';
import 'package:flutter_case_deneme_2/view/home/view_model/movie_list_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MovieListViewModel>(context);

    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      width: screenWidthPercentage(context, percentage: 1),
      height: screenHeightPercentage(context, percentage: 1),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      color: Color.fromRGBO(143, 148, 251, .2),
                      blurRadius: 20.0,
                      offset: Offset(0, 10))
                ]),
            child: TextField(
              controller: _controller,
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  // provider.fetchMovies(value);
                  //if there is an error, it will be caught by catchError which will show a snackbar
                  value = value.trim();
                  provider
                      .fetchMovies(value)
                      .then((value) {})
                      .catchError((error) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(error.toString())));
                  });
                  _controller.clear();
                }
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey[400])),
            ),
          ),
          Expanded(child: MovieListWidget(movies: provider.movies))
        ],
      ),
    );
  }
}
