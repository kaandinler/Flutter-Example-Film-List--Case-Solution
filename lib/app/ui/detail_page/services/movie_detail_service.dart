import 'dart:async';
import 'dart:convert';
import 'package:flutter_case_deneme_2/app/core/constants/base_url_constant.dart';
import 'package:flutter_case_deneme_2/app/ui/detail_page/model/movie_detail_model.dart';
import 'package:http/http.dart' as http;

class MovieDetailService {
  final String apiKey = BaseUrlConstant.apiKey;
  final String baseUrl = BaseUrlConstant.baseUrl;

  Future<List<MovieDetail>> fetchMovieDetail(String imdbID) async {
    final response = await http
        .get(Uri.parse('$baseUrl?i=$imdbID&apikey=$apiKey'))
        // .catchError((error) => throw Exception('Failed to load movie details'))
        .catchError((error) {
      return Future.error('Failed to load movie details');
    }); //.timeout(const Duration(seconds: 5),
    //   onTimeout: () => throw Exception('Failed to load movie details'));

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
      throw Exception('Service is unavailable');
    }
  }
}
