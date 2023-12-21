import 'package:doctor_spot/pages/hospital%20profile%20page/widgets/buttons.dart';
import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:doctor_spot/widgets/action_icon.dart';
import 'package:flutter/material.dart';

class HospitalAboutPage extends StatefulWidget {
  const HospitalAboutPage({super.key});

  @override
  State<HospitalAboutPage> createState() => _HospitalAboutPageState();
}

class _HospitalAboutPageState extends State<HospitalAboutPage> {
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
            const Buttons(
              text: "About",
              index: 0,
            ),
            const SizedBox(height: 24),
            Text(
              'About Hospital',
              style: MyFontStyles.titleText.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sedLorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed..Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent ',
              style: MyFontStyles.captionText.copyWith(
                color: MyColors.grey,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: MyColors.lightGray,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    'Get map directions',
                    style: MyFontStyles.titleText.copyWith(
                      color: MyColors.darkGrey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
