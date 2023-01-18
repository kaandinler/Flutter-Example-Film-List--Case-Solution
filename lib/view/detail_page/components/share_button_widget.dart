import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';
import 'package:share_plus/share_plus.dart';

class ShareButtonWidget extends StatelessWidget {
  const ShareButtonWidget({
    Key? key,
    required this.title,
    required this.btnHeight,
    required this.btnWidth,
  }) : super(key: key);

  final String title;
  final double btnHeight;
  final double btnWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        child: TextButton(
          onPressed: () {
            Share.share("Check out this movie: $title");
          },
          style: TextButton.styleFrom(
            fixedSize: Size(btnWidth, btnHeight),
            backgroundColor: Colors.white,
            foregroundColor: kPrimaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          child: const Icon(Icons.share, color: kPrimaryColor),
        ),
      ),
    );
  }
}
