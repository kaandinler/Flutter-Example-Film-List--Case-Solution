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
      )
    ]);
  }

  // Widget buildMovieGenre(BuildContext context) {
  //   List<String> genreList = movie.genre!.split(",");

  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       for (String word in genreList)
  //         Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Container(
  //             width: screenWidth(context) * 0.2,
  //             padding: const EdgeInsets.all(kDefaultPadding / 2),
  //             decoration: BoxDecoration(
  //               color: Colors.white,
  //               borderRadius: BorderRadius.circular(6),
  //               boxShadow: [
  //                 BoxShadow(
  //                   offset: Offset(0, 10),
  //                   blurRadius: 22,
  //                   color: Colors.black.withOpacity(0.5),
  //                 ),
  //                 BoxShadow(
  //                   offset: Offset(-5, -5),
  //                   blurRadius: 11,
  //                   color: Colors.white,
  //                 )
  //               ],
  //             ),
  //             child: Text(
  //               word.trim(),
  //               overflow: TextOverflow.ellipsis,
  //               textAlign: TextAlign.center,
  //               style: const TextStyle(
  //                 fontSize: 16,
  //                 fontWeight: FontWeight.bold,
  //                 color: kTextColor,
  //               ),
  //             ),
  //           ),
  //         )
  //     ],
  //   );
  // }
}
