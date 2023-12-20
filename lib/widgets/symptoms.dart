import 'package:doctor_spot/models/disease_model.dart';
import 'package:doctor_spot/pages/fever_page.dart';
import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Symptoms extends StatelessWidget {
  const Symptoms({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        itemCount: symptomsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 22),
            child: GestureDetector(
              onTap: () {
                Get.to(const FeverPage());
              },
              child: Column(
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: symptomsList[index].color,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image(
                      image: AssetImage(
                        symptomsList[index].img,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    symptomsList[index].name,
                    style: MyFontStyles.mediumText.copyWith(
                      color: MyColors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    symptomsList[index].urdu,
                    style: MyFontStyles.mediumText.copyWith(
                      color: MyColors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

List<DiseaseModel> symptomsList = [
  DiseaseModel(
    img: 'assets/icons/symptoms/fever.png',
    name: 'Fever',
    urdu: 'بخار',
  ),
  DiseaseModel(
    img: 'assets/icons/symptoms/heart.png',
    name: 'Heart Attack',
    urdu: 'دل کا دورہ',
  ),
  DiseaseModel(
    img: 'assets/icons/symptoms/pregnancy.png',
    name: 'Pregnancy',
    urdu: 'حمل',
  ),
  DiseaseModel(
    img: 'assets/icons/symptoms/bp.png',
    name: 'Blood Presure',
    urdu: 'بلڈ پریشر',
  ),
];
