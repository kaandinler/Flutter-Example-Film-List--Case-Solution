import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/components/movie_details_right_button.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';
import 'package:flutter_case_deneme_2/view/detail_page/components/movie_info_widget.dart';
import 'package:flutter_case_deneme_2/view/detail_page/components/movie_poster_widget.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_view_model.dart';
import 'share_button_widget.dart';

class MovieDetailWidget extends StatelessWidget {
  final MovieDetailViewModel movie;

  MovieDetailWidget({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          MoviePosterWidget(movie: movie),
          Column(
            children: [
              MovieDetailsRightButton(
                icon: const Icon(Icons.star),
                color: kPrimaryColor,
                data: "IMDB ${movie.imdbRating}",
              ),
              MovieDetailsRightButton(
                icon: const Icon(Icons.family_restroom),
                color: kPrimaryColor,
                data: movie.rated ?? "N/A",
              ),
              MovieDetailsRightButton(
                icon: const Icon(Icons.date_range),
                color: kPrimaryColor,
                data: movie.released ?? "N/A",
              ),
              ShareButtonWidget(title: movie.title ?? "N/A"),
            ],
          ),
        ],
      ),
      const SizedBox(height: kDefaultPadding / 2),
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: MovieInformationWidget(
          actors: movie.actors,
          plot: movie.plot,
          director: movie.director,
          awards: movie.awards,
        ),
      )
    ]);
  }
}
