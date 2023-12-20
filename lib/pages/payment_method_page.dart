import 'package:doctor_spot/utils/colors.dart';
import 'package:doctor_spot/utils/font_style.dart';
import 'package:doctor_spot/widgets/action_icon.dart';
import 'package:doctor_spot/widgets/doctor_payment_card.dart';
import 'package:doctor_spot/widgets/payment_card.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Payment Method',
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
        actions: const [
          ActionIcon(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DoctorPaymentCard(),
            const SizedBox(height: 24),
            Center(
              child: Text(
                'Select Payment Methods',
                style: MyFontStyles.titleText.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'All Methods',
              style: MyFontStyles.titleText.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaymentCard(
                  img: 'assets/images/card.png',
                  name: 'Add Card',
                ),
                PaymentCard(
                  img: 'assets/images/easy-paisa.png',
                  name: 'Easypaise',
                ),
                PaymentCard(
                  img: 'assets/images/jazz-cash.png',
                  name: 'Jazz Cash',
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              decoration: DottedDecoration(),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total payment',
                  style: MyFontStyles.titleText.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Rs.2,000',
                  style: MyFontStyles.titleText.copyWith(
                    fontWeight: FontWeight.w700,
                    color: MyColors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
