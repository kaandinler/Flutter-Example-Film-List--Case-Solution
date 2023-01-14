import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/view/detail_page/components/movie_detail_widget.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_fetch_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_case_deneme_2/core/components/flavor_config.dart';

class DetailsPage extends StatelessWidget {
  final String imdbID;

  DetailsPage({required this.imdbID});

  @override
  Widget build(BuildContext context) {
    final provider_movDet = Provider.of<MovieDetailFetchViewModel>(context);

    provider_movDet.fetchMovieDetail(imdbID);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${provider_movDet.movieDetailModel.title}",
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: FlavorConfig.instance.values.theme.primaryColor,
      ),
      body: SingleChildScrollView(
        child: MovieDetailWidget(movie: provider_movDet.movieDetailModel),
      ),
    );
  }
}
