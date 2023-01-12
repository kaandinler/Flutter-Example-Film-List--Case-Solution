import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_view_model.dart';

class MoviePosterWidget extends StatelessWidget {
  const MoviePosterWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieDetailViewModel movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.6,
      width: screenWidth(context) * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(45),
          bottomRight: Radius.circular(45),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 60,
            color: Colors.black.withOpacity(0.33),
          ),
        ],
        image: DecorationImage(
            alignment: Alignment.centerLeft,
            image: NetworkImage(movie.poster ??
                CircularProgressIndicator(
                  color: Colors.white,
                ).toString()),
            fit: BoxFit.fill),
      ),
    );
  }
}
