import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  final String img;
  final String name;
  const PaymentCard({
    super.key,
    required this.img,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 95,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: MyColors.black.withOpacity(0.1),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                img,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              name,
              style: MyFontStyles.captionText.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
