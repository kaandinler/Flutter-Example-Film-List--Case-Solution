import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_view_model.dart';

class MovieDetailWidget extends StatelessWidget {
  final MovieDetailViewModel movie;

  MovieDetailWidget({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(movie.poster),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            movie.title,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            movie.year,
            style: TextStyle(color: kTextColor),
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            movie.plot,
            style: TextStyle(color: kTextColor),
          ),
        ],
      ),
    );
  }
}
