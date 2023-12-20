import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      height: 160,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              height: 135,
              width: 115,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: MyColors.black.withOpacity(0.1),
                    offset: const Offset(0, 8),
                    blurRadius: 40,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/images/doc-1.png'),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Dr. Bellamy N',
                    style: MyFontStyles.smallText.copyWith(
                      color: MyColors.blue,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Virologist',
                    style: MyFontStyles.smallText.copyWith(
                      color: MyColors.grey,
                      fontSize: 8,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '4 year(s) of experience',
                    style: MyFontStyles.smallText.copyWith(
                      color: MyColors.grey,
                      fontSize: 6,
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
