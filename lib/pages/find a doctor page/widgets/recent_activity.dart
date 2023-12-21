import 'package:doctor_spot/pages/find%20a%20doctor%20page/models/recent_activity_model.dart';
import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: recentList.length,
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
                    color: recentList[index].color,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image(
                    image: AssetImage(
                      recentList[index].img,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  recentList[index].name,
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

List<RecentActivityModel> recentList = [
  RecentActivityModel(img: 'assets/images/img-1.png', name: 'Dr. Faisal'),
  RecentActivityModel(img: 'assets/images/img-3.png', name: 'Dr. Arshad'),
  RecentActivityModel(
    img: 'assets/images/tooth.png',
    name: 'Dentist',
    color: MyColors.blue,
  ),
  RecentActivityModel(img: 'assets/images/img-1.png', name: 'Dr. Faisal'),
  RecentActivityModel(img: 'assets/images/img-3.png', name: 'Dr. Arshad'),
  RecentActivityModel(
    img: 'assets/images/tooth.png',
    name: 'Dentist',
    color: MyColors.blue,
  ),
];
