import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/view/home/services/web_service.dart';
import 'package:flutter_case_deneme_2/view/home/view_model/movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = <MovieViewModel>[];

  Future<void> fetchMovies(String keyword) async {
    final results = await WebService().fetchMovies(keyword);
    //if the search result is empty, return an error
    if (results.isEmpty) {
      return Future.error('No movies found for $keyword');
    } else {
      this.movies =
          results.map((movie) => MovieViewModel(movie: movie)).toList();
      notifyListeners();
    }
  }
}
