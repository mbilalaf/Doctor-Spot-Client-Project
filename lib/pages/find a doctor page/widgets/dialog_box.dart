import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:doctor_spot/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDialogBox extends StatelessWidget {
  final String img;
  final String title;
  final String subTitle;
  final String text;
  final void Function()? onAllow;
  const MyDialogBox({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
    required this.text,
    this.onAllow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                img,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: MyFontStyles.headingH2.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subTitle,
                  style: MyFontStyles.titleText.copyWith(
                    color: MyColors.black2,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  text,
                  style: MyFontStyles.titleText.copyWith(
                    color: MyColors.black2,
                  ),
                ),
                const SizedBox(height: 24),
                MyButton(
                  onTap: onAllow,
                  btnText: "Allow Access",
                  color: MyColors.blue,
                  textColor: MyColors.white,
                ),
                const SizedBox(height: 16),
                MyButton(
                  onTap: () {
                    Get.back();
                  },
                  btnText: "Deny",
                  border: true,
                  color: MyColors.white,
                  textColor: MyColors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
