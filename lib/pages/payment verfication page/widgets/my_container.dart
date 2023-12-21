import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String img;
  final String name;
  const MyContainer({
    super.key,
    required this.img,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 34,
          width: 34,
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(11),
            boxShadow: [
              BoxShadow(
                blurRadius: 9,
                color: MyColors.black.withOpacity(0.06),
              ),
            ],
          ),
          child: Image(
            image: AssetImage(
              img,
            ),
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          name,
          style: MyFontStyles.captionText.copyWith(
            color: MyColors.darkGrey,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
