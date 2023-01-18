import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';

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
        Container(
          width: screenWidth(context) * 0.9,
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 22,
                color: kBoxShadowColor,
              ),
            ],
          ),
          child: Text(
            plot ?? "No plot information",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
        ),
        verticalSpaceTiny,
        Container(
          width: screenWidth(context) * 0.9,
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 20),
                blurRadius: 11,
                color: kBoxShadowColor,
              ),
            ],
          ),
          child: Text(
            "Director: $director",
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: kTextColor),
          ),
        ),
        verticalSpaceTiny,
        Container(
          width: screenWidth(context) * 0.9,
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 5,
                color: kBoxShadowColor,
              ),
            ],
          ),
          child: Text(
            "Actors: $actors",
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: kTextColor),
          ),
        ),
        verticalSpaceTiny,
        Container(
          width: screenWidth(context) * 0.9,
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 5,
                color: kBoxShadowColor,
              ),
            ],
          ),
          child: Text(
            "Awards: $awards",
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: kTextColor),
          ),
        ),
      ],
    );
  }
}
