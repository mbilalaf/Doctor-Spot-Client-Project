import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:doctor_spot/widgets/search_doctor_card.dart';
import 'package:doctor_spot/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeverPage extends StatelessWidget {
  const FeverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fever',
          style: MyFontStyles.headingH2.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: MyColors.lightGrey,
              ),
              child: const FractionallySizedBox(
                heightFactor: 0.42,
                widthFactor: 0.42,
                child: Image(
                  image: AssetImage('assets/icons/filter.png'),
                ),
              ),
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            MyTextField(hintText: 'Search doctors by name'),
            SizedBox(height: 24),
            SearchDoctorCard(),
          ],
        ),
      ),
    );
  }
}
