import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/constants/constants.dart';

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
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        child: TextButton(
          onPressed: () {
            Share.share("Check out this movie: $title");
          },
          style: TextButton.styleFrom(
            fixedSize: const Size(kButtonWidth, kButtonHeight),
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
