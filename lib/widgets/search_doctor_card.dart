import 'package:doctor_spot/models/fever_model.dart';
import 'package:doctor_spot/pages/payment_verification_page.dart';
import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchDoctorCard extends StatelessWidget {
  const SearchDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: feverList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: MyColors.grey.withOpacity(0.1),
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 57,
                              width: 61,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Image(
                                image: AssetImage(
                                  feverList[index].img,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              feverList[index].name,
                              style: MyFontStyles.titleText.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              'Dermatologist',
                              style: MyFontStyles.captionText,
                            ),
                            const Text(
                              'MBBS, FCPS,(Dermatology),',
                              style: MyFontStyles.captionText,
                            ),
                          ],
                        ),
                        Text(
                          '20% off',
                          style: MyFontStyles.captionText.copyWith(
                            color: MyColors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      decoration: DottedDecoration(
                        shape: Shape.line,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 63,
                      width: 202,
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 6),
                            blurRadius: 40,
                            color: MyColors.black.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: MyColors.lightGray,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4,806+',
                                    style: MyFontStyles.smallText.copyWith(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Patients',
                                    style: MyFontStyles.smallText.copyWith(
                                      fontSize: 6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: MyColors.lightGray,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '15 Years',
                                    style: MyFontStyles.smallText.copyWith(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Experience',
                                    style: MyFontStyles.smallText.copyWith(
                                      fontSize: 6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: MyColors.lightGray,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '97%',
                                    style: MyFontStyles.smallText.copyWith(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Satisfaction',
                                    style: MyFontStyles.smallText.copyWith(
                                      fontSize: 6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 31,
                          width: 31,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: MyColors.blue,
                            ),
                          ),
                          child: const Image(
                            image: AssetImage('assets/icons/heart.png'),
                          ),
                        ),
                        const SizedBox(width: 24),
                        InkWell(
                          onTap: () {
                            Get.to(const PaymentVerificationPage());
                          },
                          child: Container(
                            height: 31,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: MyColors.blue,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Image(
                                  image: AssetImage('assets/icons/book.png'),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Book Apointment',
                                  style: MyFontStyles.captionText.copyWith(
                                    color: MyColors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<FeverModel> feverList = [
  FeverModel(img: 'assets/images/rodger.png', name: 'Dr. Rodger Struck'),
  FeverModel(img: 'assets/images/dr-sadaf.png', name: 'Dr. Sadaf Amin'),
  FeverModel(img: 'assets/images/rodger.png', name: 'Dr. Rodger Struck'),
  FeverModel(img: 'assets/images/dr-sadaf.png', name: 'Dr. Sadaf Amin'),
];
