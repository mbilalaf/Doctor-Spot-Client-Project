import 'package:doctor_spot/utils/colors.dart';
import 'package:flutter/material.dart';

class ActionIcon extends StatelessWidget {
  const ActionIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: MyColors.green.withOpacity(0.3),
            width: 2,
          ),
        ),
        child: Container(
          height: 28.8,
          width: 28.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: MyColors.green,
          ),
          child: const Image(
            image: AssetImage(
              'assets/icons/doc.png',
            ),
          ),
        ),
      ),
    );
  }
}
