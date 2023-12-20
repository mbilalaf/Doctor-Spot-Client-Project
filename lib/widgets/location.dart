import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:doctor_spot/widgets/dialog_box.dart';
import 'package:flutter/material.dart';

class ChangeLoctaion extends StatelessWidget {
  const ChangeLoctaion({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  surfaceTintColor: MyColors.white,
                  backgroundColor: MyColors.white,
                  content: MyDialogBox(
                    img: 'assets/images/cameraandmicrophone.png',
                    title:
                        'Allow DoctorSpot to access your camera & Microphone?',
                    subTitle:
                        'DoctorSpot will use Camera & Microphone permissions to enable you:',
                    text: '1. To Take Video Consultation from doctor.',
                  ),
                );
              },
            );
          },
          child: const Row(
            children: [
              Image(
                height: 14,
                image: AssetImage(
                  'assets/icons/location.png',
                ),
              ),
              SizedBox(width: 5),
              Text(
                'Wallace, Australia',
                style: MyFontStyles.smallText,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  backgroundColor: MyColors.white,
                  content: MyDialogBox(
                    img: 'assets/images/location.png',
                    title: 'Allow DoctorSpot to access Loaction?',
                    subTitle: 'It will help us in :',
                    text:
                        '1. Finding doctors,hospitals and labs in your city.\n2. Delivering medicines and labs test services at your doorstep.',
                  ),
                );
              },
            );
          },
          child: Text(
            'Change location',
            style: MyFontStyles.smallText.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
