import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';
import 'package:share_plus/share_plus.dart';

class ShareButtonWidget extends StatelessWidget {
  const ShareButtonWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: TextButton(
        onPressed: () {
          Share.share("Check out this movie: $title");
        },
        child: const Icon(Icons.share),
        style: TextButton.styleFrom(
          minimumSize: const Size(72, 72),
          backgroundColor: Colors.white,
          foregroundColor: kPrimaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
