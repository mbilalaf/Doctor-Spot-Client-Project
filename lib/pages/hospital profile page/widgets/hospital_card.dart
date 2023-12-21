import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HospitalCard extends StatelessWidget {
  const HospitalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: MyColors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 8,
            color: MyColors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.060,
                  width: 61,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Image(
                    image: AssetImage(
                      'assets/images/hospital.png',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abaseen Hospital',
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
                              height: 12,
                              image: AssetImage(
                                'assets/icons/locations.png',
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Kohat Road, Dabgari Gardens',
                              style: MyFontStyles.smallText.copyWith(
                                color: MyColors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    RatingBar(
                      itemSize: 24,
                      initialRating: 4,
                      ratingWidget: RatingWidget(
                        full: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        half: const Icon(
                          Icons.star_half,
                          color: Colors.yellow,
                        ),
                        empty: const Icon(
                          Icons.star_border_outlined,
                          color: MyColors.darkGrey,
                        ),
                      ),
                      onRatingUpdate: (value) {},
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              decoration: DottedDecoration(),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Image(
                  height: 12,
                  image: AssetImage(
                    'assets/icons/call.png',
                  ),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Appointment No: ',
                  style: MyFontStyles.titleText,
                ),
                const SizedBox(width: 4),
                Text(
                  '0123456778',
                  style: MyFontStyles.titleText.copyWith(
                    fontWeight: FontWeight.w400,
                    color: MyColors.darkGrey,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Image(
                  height: 12,
                  image: AssetImage(
                    'assets/icons/doctor.png',
                  ),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Doctors: ',
                  style: MyFontStyles.titleText,
                ),
                const SizedBox(width: 4),
                Text(
                  '26',
                  style: MyFontStyles.titleText.copyWith(
                    fontWeight: FontWeight.w400,
                    color: MyColors.darkGrey,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Image(
                  height: 12,
                  image: AssetImage(
                    'assets/icons/timing.png',
                  ),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Timing: ',
                  style: MyFontStyles.titleText,
                ),
                const SizedBox(width: 4),
                Text(
                  '24 hours',
                  style: MyFontStyles.titleText.copyWith(
                    fontWeight: FontWeight.w400,
                    color: MyColors.darkGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
