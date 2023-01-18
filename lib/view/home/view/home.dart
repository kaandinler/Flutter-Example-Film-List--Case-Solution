import 'package:flutter/material.dart';

import 'package:flutter_case_deneme_2/core/constants/constants.dart';
// ignore: unused_import
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_fetch_view_model.dart';
import 'package:flutter_case_deneme_2/view/home/components/movie_list_widget.dart';
import 'package:flutter_case_deneme_2/view/home/view_model/movie_list_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MovieListViewModel>(context);

    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      width: screenWidthPercentage(context, percentage: 1),
      height: screenHeightPercentage(context, percentage: 1),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                      color: kBoxShadowColor,
                      blurRadius: 20.0,
                      offset: Offset(0, 10))
                ]),
            child: TextField(
              autocorrect: true,
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
                  icon: const Icon(Icons.search, color: kPrimaryColor),
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
