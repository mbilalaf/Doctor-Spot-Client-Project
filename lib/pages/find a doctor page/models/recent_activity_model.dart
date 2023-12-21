import 'package:doctor_spot/utils/colors.dart';
import 'package:flutter/material.dart';

class RecentActivityModel {
  final String img;
  final String name;
  final Color? color;

  RecentActivityModel({
    required this.img,
    required this.name,
    this.color = MyColors.lightGray,
  });
}
