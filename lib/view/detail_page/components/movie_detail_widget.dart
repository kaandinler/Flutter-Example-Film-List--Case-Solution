import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/view/detail_page/components/genre_list_widget.dart';
import 'package:flutter_case_deneme_2/view/detail_page/components/movie_details_right_button.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';
import 'package:flutter_case_deneme_2/view/detail_page/components/movie_info_widget.dart';
import 'package:flutter_case_deneme_2/view/detail_page/components/movie_poster_widget.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_view_model.dart';
import 'share_button_widget.dart';

class MovieDetailWidget extends StatelessWidget {
  final MovieDetailViewModel movie;

  const MovieDetailWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          MoviePosterWidget(
              imageUrl: movie.poster ?? "",
              height: screenHeight(context) * 0.6,
              width: screenWidth(context) * 0.75),
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
              ShareButtonWidget(
                title: movie.title ?? "N/A",
              ),
            ],
          ),
        ],
      ),
      verticalSpaceSmall,
      GenreListWidget(genre: movie.genre ?? "N/A"),
      verticalSpaceSmall,
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: MovieInformationWidget(
          actors: movie.actors,
          plot: movie.plot,
          director: movie.director,
          awards: movie.awards,
        ),
      ),
      verticalSpaceSmall
    ]);
  }
}
