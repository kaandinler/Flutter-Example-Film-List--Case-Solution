import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/app/core/constants/constants.dart';
import 'package:flutter_case_deneme_2/app/ui/detail_page/view/details_page.dart';
import 'package:flutter_case_deneme_2/app/ui/home/view_model/movie_view_model.dart';

class MovieListWidget extends StatelessWidget {
  final List<MovieViewModel> movies;

  const MovieListWidget({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];

        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPage(
                  imdbID: movie.imdbID,
                ),
              ),
            );
          },
          contentPadding: const EdgeInsets.all(kDefaultPadding / 4),
          leading: Container(
            width: 60,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(movie.poster),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(movie.title),
          subtitle: Text("Release year ${movie.year}"),
        );
      },
    );
  }
}
