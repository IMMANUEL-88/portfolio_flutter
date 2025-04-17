import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

BoxDecoration eHeaderDecoration = BoxDecoration(
  gradient: const LinearGradient(
    colors: [
      Colors.transparent,
      EColors.bgLight1,
    ],
  ), // LinearGradient
  borderRadius: BorderRadius.circular(
    100,
  ),
); // BoxDecoration
