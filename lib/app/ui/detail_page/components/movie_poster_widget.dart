import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

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
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 60,
            color: kBoxShadowColor,
          ),
        ],
        image: DecorationImage(
            alignment: Alignment.centerLeft,
            repeat: ImageRepeat.noRepeat,
            image: NetworkImage(imageUrl),
            //onError: is removed.
            onError: (exception, stackTrace) => {
                  print("Error occured while loading image: $exception"),
                  print("Stacktrace: $stackTrace"),
                },
            fit: BoxFit.fill),
      ),
      // child: FadeInImage.assetNetwork(
      //   placeholder: 'assets/images/telegram.png',
      //   image: imageUrl,
      //   fadeInDuration: const Duration(seconds: 2),
      //   fit: BoxFit.fill,
      // ),
      // child: CachedNetworkImage(
      //   imageUrl: imageUrl,
      //   height: height,
      //   width: width,

      //   placeholder: (context, imageUrl) => const CircularProgressIndicator(),
      //   // progressIndicatorBuilder: (context, url, downloadProgress) =>
      //   //     CircularProgressIndicator(value: downloadProgress.progress),
      //   errorWidget: (context, url, error) => const Icon(Icons.error),

      //   fit: BoxFit.fill,
      // ),
    );
  }
}
