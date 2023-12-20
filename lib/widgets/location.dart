import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';

class ChangeLoctaion extends StatelessWidget {
  const ChangeLoctaion({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Image(
              height: 14,
              image: AssetImage(
                'assets/icons/location.png',
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Wallace, Australia',
              style: MyFontStyles.smallText,
            ),
          ],
        ),
        Text(
          'Change location',
          style: MyFontStyles.smallText.copyWith(
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
