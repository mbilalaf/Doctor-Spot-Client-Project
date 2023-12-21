import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:doctor_spot/widgets/action_icon.dart';
import 'package:doctor_spot/pages/find%20a%20doctor%20page/widgets/banner.dart';
import 'package:doctor_spot/pages/find%20a%20doctor%20page/widgets/top_disease.dart';
import 'package:doctor_spot/pages/find%20a%20doctor%20page/widgets/doctor_card.dart';
import 'package:doctor_spot/pages/find%20a%20doctor%20page/widgets/location.dart';
import 'package:doctor_spot/pages/find%20a%20doctor%20page/widgets/recent_activity.dart';
import 'package:doctor_spot/pages/find%20a%20doctor%20page/widgets/symptoms.dart';
import 'package:doctor_spot/widgets/text_field.dart';
import 'package:doctor_spot/pages/find%20a%20doctor%20page/widgets/top_speciallities.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

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
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
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
              padding: EdgeInsets.only(
                right: 16,
                left: 16,
                bottom: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChangeLoctaion(),
                  SizedBox(height: 24),
                  Text(
                    "Recent Activities",
                    style: MyFontStyles.headingH2,
                  ),
                  SizedBox(height: 16),
                  RecentActivity(),
                  SizedBox(height: 24),
                  Row(
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
                  SizedBox(height: 16),
                  Symptoms(),
                  SizedBox(height: 24),
                  Text(
                    "Top Disease",
                    style: MyFontStyles.headingH2,
                  ),
                  SizedBox(height: 16),
                  TopDisease(),
                  SizedBox(height: 24),
                  SizedBox(height: 24),
                  Text(
                    "Top Specialties",
                    style: MyFontStyles.headingH2,
                  ),
                  SizedBox(height: 16),
                  TopSpeciallities(),
                  SizedBox(height: 24),
                  Text(
                    "Top Doctors",
                    style: MyFontStyles.headingH2,
                  ),
                  SizedBox(height: 16),
                  DoctorCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
