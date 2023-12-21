import 'package:doctor_spot/pages/hospital%20profile%20page/hospital_profile_page.dart';
import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:doctor_spot/widgets/action_icon.dart';
import 'package:doctor_spot/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/banner.dart';
import 'widgets/doctor_card.dart';
import 'widgets/location.dart';
import 'widgets/recent_activity.dart';
import 'widgets/symptoms.dart';
import 'widgets/top_disease.dart';
import 'widgets/top_speciallities.dart';

class FindADoctorPage extends StatelessWidget {
  const FindADoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Find a Doctor',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 240,
              child: Stack(
                children: [
                  MyBanner(),
                  SizedBox(height: 20),
                  Positioned(
                    top: 162,
                    left: 22,
                    right: 22,
                    child: MyTextField(hintText: 'Search'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                bottom: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ChangeLoctaion(),
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {
                      Get.to(const HospitalProfilePage());
                    },
                    child: const Text(
                      "Recent Activities",
                      style: MyFontStyles.headingH2,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const RecentActivity(),
                  const SizedBox(height: 24),
                  const Row(
                    children: [
                      Text(
                        "Common Symptoms",
                        style: MyFontStyles.headingH2,
                      ),
                      Text(
                        " ❓",
                        style: MyFontStyles.headingH2,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Symptoms(),
                  const SizedBox(height: 24),
                  const Text(
                    "Top Disease",
                    style: MyFontStyles.headingH2,
                  ),
                  const SizedBox(height: 16),
                  const TopDisease(),
                  const SizedBox(height: 24),
                  const SizedBox(height: 24),
                  const Text(
                    "Top Specialties",
                    style: MyFontStyles.headingH2,
                  ),
                  const SizedBox(height: 16),
                  const TopSpeciallities(),
                  const SizedBox(height: 24),
                  const Text(
                    "Top Doctors",
                    style: MyFontStyles.headingH2,
                  ),
                  const SizedBox(height: 16),
                  const DoctorCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
