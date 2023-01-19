import 'dart:convert';
import 'dart:io';
import 'package:flutter_case_deneme_2/core/components/flavor_config.dart';
import 'package:flutter_case_deneme_2/view/detail_page/model/movie_detail_model.dart';
import 'package:http/http.dart' as http;

class MovieDetailService {
  final String apiKey = FlavorConfig.instance.values.apiKey;
  final String baseUrl = FlavorConfig.instance.values.baseUrl;

  Future<List<MovieDetail>> fetchMovieDetail(String imdbID) async {
    final response = await http
        .get(Uri.parse('$baseUrl?i=$imdbID&apikey=$apiKey'))
        .catchError((error) => throw Exception('Failed to load movie details'));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body) ?? {};
      //if the "Title" is null, result is empty, return an empty list
      if (result["Title"] == null) {
        return [];
      }

      final Iterable list = [result];
      return list
          .map((movieDetail) => MovieDetail.fromJson(movieDetail))
          .toList();
    } else {
      throw Exception('Failed to load movie details');
    }

    //if there is no internet connection, return an empty list, it will be handled in the free time.
  }
}
