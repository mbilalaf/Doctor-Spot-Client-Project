import 'package:doctor_spot/models/disease_model.dart';
import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';

class TopSpeciallities extends StatelessWidget {
  const TopSpeciallities({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        itemCount: specialitiesList.length,
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
                    color: specialitiesList[index].color,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image(
                    image: AssetImage(
                      specialitiesList[index].img,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  specialitiesList[index].name,
                  style: MyFontStyles.mediumText.copyWith(
                    color: MyColors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  specialitiesList[index].urdu,
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

List<DiseaseModel> specialitiesList = [
  DiseaseModel(
    img: 'assets/icons/specialities/img-1.png',
    name: 'Dermatologist',
    urdu: 'ماہر امراض جلد',
  ),
  DiseaseModel(
    img: 'assets/icons/specialities/img-2.png',
    name: 'Urologist',
    urdu: 'نظام اخراج ',
  ),
  DiseaseModel(
    img: 'assets/icons/specialities/img-3.png',
    name: 'Gastritis',
    urdu: 'معدہ کے ماہر ڈاکٹر',
  ),
  DiseaseModel(
    img: 'assets/icons/specialities/img-4.png',
    name: 'Gastroe',
    urdu: 'Gastroe',
  ),
];
