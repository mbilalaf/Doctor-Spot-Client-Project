import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';

class DoctorPaymentCard extends StatelessWidget {
  const DoctorPaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 57,
              width: 61,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Image(
                image: AssetImage(
                  'assets/images/henry.png',
                ),
              ),
            ),
            const Positioned(
              right: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image(
                    image: AssetImage(
                      'assets/icons/verified.png',
                    ),
                  ),
                  Image(
                    image: AssetImage(
                      'assets/icons/tick.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dr. Courtney Henry',
              style: MyFontStyles.titleText.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Image(
                      image: AssetImage(
                        'assets/icons/aid.png',
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Abbas bin Zolkarnen',
                      style: MyFontStyles.smallText.copyWith(
                        color: MyColors.darkGrey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 2,
                          backgroundColor: MyColors.black,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Online Consultation',
                          style: MyFontStyles.smallText.copyWith(
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'RS 800',
                      style: MyFontStyles.smallText.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                const Image(
                  image: AssetImage(
                    'assets/icons/hospital.png',
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  'HS Medical Center Hospital',
                  style: MyFontStyles.smallText.copyWith(
                    color: MyColors.darkGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
