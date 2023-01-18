import 'package:flutter/material.dart';

class MoviePosterWidget extends StatelessWidget {
  const MoviePosterWidget({
    Key? key,
    required this.imageUrl,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String imageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 60,
            color: Colors.black.withOpacity(0.33),
          ),
        ],
        image: DecorationImage(
            alignment: Alignment.centerLeft,
            repeat: ImageRepeat.noRepeat,
            onError: (exception, stackTrace) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Image not found"),
                ),
              );
            },
            image: NetworkImage(imageUrl),
            fit: BoxFit.fill),
      ),
    );
  }
}
