import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      height: 100,
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text(
        "Made by Immanuel Antony Jeyam with Flutter 3.29.0",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: EColors.darkGrey,
        ),
      ),
    );
  }
}
