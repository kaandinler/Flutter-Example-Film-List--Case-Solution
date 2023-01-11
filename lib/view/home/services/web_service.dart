import 'dart:convert';

import '../model/movie_model.dart';
import 'package:http/http.dart' as http;

class WebService {
  final String apiKey = '5b5927c3';
  final String baseUrl = 'http://www.omdbapi.com/';

  Future<List<Movie>> fetchMovies(String keyword) async {
    final response =
        await http.get(Uri.parse('$baseUrl?s=$keyword&apikey=$apiKey'));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body) ?? {};
      //if the search result is empty, return an empty list
      if (result["Search"] is! Iterable) {
        return [];
      }
      final Iterable list = result["Search"];
      return list.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
