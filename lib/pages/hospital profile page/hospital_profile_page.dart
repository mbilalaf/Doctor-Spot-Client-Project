import 'package:doctor_spot/pages/hospital%20profile%20page/hospital_about_page.dart';

import 'package:doctor_spot/pages/hospital%20profile%20page/widgets/hospital_card.dart';
import 'package:doctor_spot/pages/hospital%20profile%20page/widgets/hospital_doctor_card.dart';
import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:doctor_spot/widgets/action_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalProfilePage extends StatelessWidget {
  const HospitalProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Hospital Profile',
          style: MyFontStyles.headingH2.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: const Icon(Icons.arrow_back),
        actions: const [
          ActionIcon(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HospitalCard(),
            const SizedBox(height: 24),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: MyColors.lightGray,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: MyColors.lightGray,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Text(
                              'About',
                              style: MyFontStyles.titleText.copyWith(
                                fontWeight: FontWeight.w600,
                                color: MyColors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(const HospitalAboutPage());
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: MyColors.blue,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Text(
                              'Hospital Doctor\'s',
                              style: MyFontStyles.titleText.copyWith(
                                color: MyColors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Hospital Doctors',
              style: MyFontStyles.titleText.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 24),
            const HospitalDoctorCard()
          ],
        ),
      ),
    );
  }
}
