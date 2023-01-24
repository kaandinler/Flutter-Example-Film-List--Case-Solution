import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';

import 'info_container_widget.dart';

class MovieInformationWidget extends StatelessWidget {
  const MovieInformationWidget({
    Key? key,
    required this.plot,
    required this.director,
    required this.actors,
    required this.awards,
  }) : super(key: key);

  final String? plot;
  final String? director;
  final String? actors;
  final String? awards;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        info_container_widget(message: plot),
        verticalSpaceTiny,
        info_container_widget(message: 'Director: $director'),
        verticalSpaceTiny,
        info_container_widget(message: 'Actors: $actors'),
        verticalSpaceTiny,
        info_container_widget(message: 'Awards: $awards'),
      ],
    );
  }
}
