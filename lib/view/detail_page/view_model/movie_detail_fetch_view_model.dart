import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/view/detail_page/services/movie_detail_service.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_view_model.dart';

class MovieDetailViewModel extends ChangeNotifier {
  List<MovieDetailModel> movieDetailModel = <MovieDetailModel>[];

  Future<void> fetchMovieDetail(String imdbID) async {
    final results = await MovieDetailService().fetchMovieDetail(imdbID);
    if (results.isEmpty) {
      return Future.error('No movie detail found for $imdbID');
    }
    this.movieDetailModel =
        results.map((e) => MovieDetailModel(movieDetail: e)).toList();
    notifyListeners();

    //List<> kaldırılması gerekiyor bakılacak
  }
}
