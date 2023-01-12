import 'package:flutter_case_deneme_2/view/detail_page/model/movie_detail_model.dart';

class MovieDetailViewModel {
  final MovieDetail movieDetail;

  MovieDetailViewModel({required this.movieDetail});

  String get title {
    return movieDetail.title;
  }

  String get year {
    return movieDetail.year;
  }

  String get rated {
    return movieDetail.rated;
  }

  String get released {
    return movieDetail.released;
  }

  String get runtime {
    return movieDetail.runtime;
  }

  String get genre {
    return movieDetail.genre;
  }

  String get director {
    return movieDetail.director;
  }

  String get writer {
    return movieDetail.writer;
  }

  String get actors {
    return movieDetail.actors;
  }

  String get plot {
    return movieDetail.plot;
  }

  String get language {
    return movieDetail.language;
  }

  String get country {
    return movieDetail.country;
  }

  String get awards {
    return movieDetail.awards;
  }

  String get poster {
    return movieDetail.poster;
  }

  List<Ratings>? get ratings {
    return movieDetail.ratings;
  }

  String get metascore {
    return movieDetail.metascore;
  }

  String get imdbRating {
    return movieDetail.imdbRating;
  }

  String get imdbVotes {
    return movieDetail.imdbVotes;
  }

  String get imdbID {
    return movieDetail.imdbID;
  }

  String get type {
    return movieDetail.type;
  }

  String get dVD {
    return movieDetail.dVD;
  }

  String get boxOffice {
    return movieDetail.boxOffice;
  }

  String get production {
    return movieDetail.production;
  }

  String get website {
    return movieDetail.website;
  }

  String get response {
    return movieDetail.response;
  }
}
