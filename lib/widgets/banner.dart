import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Image(
            height: 180,
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
            image: const AssetImage(
              'assets/images/bg.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 100,
              left: 22,
              right: 22,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Top Doctors\nof Pakistan!',
                  style: MyFontStyles.heading,
                ),
                Text(
                  'Let\'s get connected\nwith me',
                  style: MyFontStyles.mediumText.copyWith(
                    color: MyColors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
