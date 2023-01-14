import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';

class GenreListWidget extends StatelessWidget {
  final String genre;

  const GenreListWidget({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    List<String> genreList = genre.split(",");

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (String word in genreList)
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              child: Container(
                width: screenWidth(context) * 0.25,
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 22,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    const BoxShadow(
                      offset: Offset(-5, -5),
                      blurRadius: 11,
                      color: Colors.white,
                    )
                  ],
                ),
                child: Text(
                  word.trim(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kTextColor,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
