import 'package:flutter_case_deneme_2/view/home/model/movie_model.dart';

class MovieViewModel {
  final Movie movie;

  MovieViewModel({required this.movie});

  String get title {
    return movie.title;
  }

  String get year {
    return movie.year;
  }

  String get poster {
    return movie.poster;
  }

  String get imdbID {
    return movie.imdbID;
  }

  String get type {
    return movie.type;
  }
}
