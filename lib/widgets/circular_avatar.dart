import 'package:doctor_spot/models/disease_model.dart';
import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';

class TopDisease extends StatelessWidget {
  const TopDisease({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        itemCount: diseaseList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 22),
            child: Column(
              children: [
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                    color: diseaseList[index].color,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image(
                    image: AssetImage(
                      diseaseList[index].img,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  diseaseList[index].name,
                  style: MyFontStyles.mediumText.copyWith(
                    color: MyColors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  diseaseList[index].urdu,
                  style: MyFontStyles.mediumText.copyWith(
                    color: MyColors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<DiseaseModel> diseaseList = [
  DiseaseModel(
    img: 'assets/icons/disease/mosquito.png',
    name: 'Dengue Fever',
    urdu: 'ڈینگی بخار',
  ),
  DiseaseModel(
    img: 'assets/icons/disease/thermometer.png',
    name: 'Typhold Fever',
    urdu: 'ٹائیفائیڈ بخار',
  ),
  DiseaseModel(
    img: 'assets/icons/disease/virus.png',
    name: 'Piles',
    urdu: 'بواسیر',
  ),
  DiseaseModel(
    img: 'assets/icons/disease/gas.png',
    name: 'Gastritis',
    urdu: 'Gastritis',
  ),
];
