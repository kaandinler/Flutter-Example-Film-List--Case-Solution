import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/view/detail_page/components/movie_detail_widget.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_fetch_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_case_deneme_2/core/components/flavor_config.dart';

class DetailsPage extends StatelessWidget {
  final String imdbID;

  const DetailsPage({super.key, required this.imdbID});

  @override
  Widget build(BuildContext context) {
    final providerMovDet = Provider.of<MovieDetailFetchViewModel>(context);
    providerMovDet.fetchMovieDetail(imdbID);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${providerMovDet.movieDetailModel.title}",
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: FlavorConfig.instance.values.theme.primaryColor,
      ),
      body: SingleChildScrollView(
        child: MovieDetailWidget(movie: providerMovDet.movieDetailModel),
      ),
    );
  }
}
