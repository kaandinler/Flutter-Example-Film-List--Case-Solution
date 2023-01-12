import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/constants/constants.dart';
import 'package:flutter_case_deneme_2/view/detail_page/view_model/movie_detail_view_model.dart';

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
        height: 74,
        width: 74,
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        margin: EdgeInsets.symmetric(vertical: screenHeight(context) * 0.03),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.23),
            ),
            BoxShadow(
              offset: Offset(-3, -3),
              blurRadius: 20,
              color: Colors.white,
            )
          ],
        ),
        child: Column(
          children: [
            Icon(icon.icon, color: color),
            Text(
              data,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
              style: TextStyle(
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
