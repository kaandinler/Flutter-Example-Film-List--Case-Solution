import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/view/detail_page/model/movie_detail_model.dart';
import 'package:flutter_case_deneme_2/view/detail_page/services/movie_detail_service.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_view_model.dart';

class MovieDetailFetchViewModel extends ChangeNotifier {
  MovieDetailViewModel movieDetailModel = MovieDetailViewModel(
      movieDetail: MovieDetail(
          actors: '',
          awards: '',
          country: '',
          director: '',
          genre: '',
          imdbID: '',
          imdbRating: '',
          imdbVotes: '',
          language: '',
          metascore: '',
          plot: '',
          poster: '',
          rated: '',
          released: '',
          runtime: '',
          title: '',
          type: '',
          writer: '',
          year: '',
          boxOffice: '',
          dVD: '',
          production: '',
          ratings: [],
          response: '',
          website: ''));

  Future<void> fetchMovieDetail(String imdbID) async {
    final results = await MovieDetailService().fetchMovieDetail(imdbID);
    if (results.isEmpty) {
      return Future.error('No movie detail found for $imdbID');
    }
    movieDetailModel = MovieDetailViewModel(movieDetail: results[0]);

    notifyListeners();

    //List<> kaldırılması gerekiyor bakılacak
  }
}
