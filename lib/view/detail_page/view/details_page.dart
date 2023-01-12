import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/view/detail_page/components/movie_detail_widget.dart';
import 'package:flutter_case_deneme_2/view/detail_page/model/movie_detail_model.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_fetch_view_model.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_view_model.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatelessWidget {
  final String imdbID;

  DetailsPage({required this.imdbID});

  @override
  Widget build(BuildContext context) {
    final provider_movDet = Provider.of<MovieDetailFetchViewModel>(context);

    provider_movDet.fetchMovieDetail(imdbID);

    return Scaffold(
      appBar: AppBar(
        title: Text(imdbID),
      ),
      body: SingleChildScrollView(
        child: MovieDetailWidget(movie: provider_movDet.movieDetailModel),
      ),
    );
  }
}
