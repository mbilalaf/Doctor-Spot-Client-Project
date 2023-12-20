import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 313,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 8,
            color: MyColors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            const Image(
              height: 42,
              color: MyColors.blue,
              image: AssetImage('assets/icons/like.png'),
            ),
            const SizedBox(height: 16),
            Text(
              'Your Payment Has been verified.',
              style: MyFontStyles.titleText.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text(
                  'Patient Name : ',
                  style: MyFontStyles.titleText,
                ),
                Text(
                  'Ahmad',
                  style: MyFontStyles.titleText,
                ),
              ],
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Text(
                  'Doctor name : ',
                  style: MyFontStyles.titleText,
                ),
                Text(
                  'Dr. Faisal Ahmed',
                  style: MyFontStyles.titleText,
                ),
              ],
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Text(
                  'Date & Time :  ',
                  style: MyFontStyles.titleText,
                ),
                Text(
                  'Aug 27, 2023, 04;00 PM',
                  style: MyFontStyles.titleText,
                ),
              ],
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Text(
                  'Consultation : ',
                  style: MyFontStyles.titleText,
                ),
                Text(
                  'Video consultation',
                  style: MyFontStyles.titleText,
                ),
              ],
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Text(
                  'Doctoe Fee : ',
                  style: MyFontStyles.titleText,
                ),
                Text(
                  'Rs .200',
                  style: MyFontStyles.titleText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
