import 'package:doctor_spot/utils/colors.dart';
import 'package:flutter/material.dart';

class DiseaseModel {
  final String img;
  final String name;
  final String urdu;
  final Color? color;

  DiseaseModel({
    required this.img,
    required this.name,
    required this.urdu,
    this.color = MyColors.lightGray,
  });
}
