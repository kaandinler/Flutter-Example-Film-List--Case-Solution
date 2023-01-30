import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/app/core/constants/constants.dart';

class MovieDetailsRightButton extends StatelessWidget {
  const MovieDetailsRightButton({
    Key? key,
    required this.icon,
    required this.color,
    required this.data,
  }) : super(key: key);

  final Icon icon;
  final Color color;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        height: kButtonHeight,
        width: kButtonWidth,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.23),
            ),
            const BoxShadow(
              offset: Offset(-3, -3),
              blurRadius: 20,
              color: kBoxShadowColor,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon.icon, color: color),
            Text(
              data,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
