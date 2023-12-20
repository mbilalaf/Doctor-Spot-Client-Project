import 'package:doctor_spot/pages/payment_method_page.dart';
import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:doctor_spot/widgets/action_icon.dart';
import 'package:doctor_spot/widgets/button.dart';
import 'package:doctor_spot/widgets/info_container.dart';
import 'package:doctor_spot/widgets/my_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentVerificationPage extends StatelessWidget {
  const PaymentVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Payment Verification',
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
          children: [
            const InfoContainer(),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyContainer(
                  img: 'assets/icons/wait.png',
                  name: 'Wait for\nconfirmation',
                ),
                MyContainer(
                  img: 'assets/icons/call.png',
                  name: 'Get call & \nnotification',
                ),
                MyContainer(
                  img: 'assets/icons/clock.png',
                  name: 'Go to Waiting\narea',
                ),
              ],
            ),
            const SizedBox(height: 50),
            MyButton(
              onTap: () {
                Get.to(const PaymentMethodPage());
              },
              btnText: 'Go to My Appointments',
              textColor: MyColors.white,
              color: MyColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
