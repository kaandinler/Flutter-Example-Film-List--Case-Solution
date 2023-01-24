import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';

class info_container_widget extends StatelessWidget {
  const info_container_widget({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        "$message",
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: kTextColor),
      ),
    );
  }
}
