import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/image_strings.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/utils/e_rounded_image.dart';
import 'package:my_portfolio/utils/helper_functions.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = EHelperFunctions.isDarkMode(context);
    final screenWidth = EHelperFunctions.screenWidth(context);
    final screenHeight = EHelperFunctions.screenHeight(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Image
          ERoundedImage(
            imageUrl: EImages.profile,
            height: screenHeight / 2.5,
            width: screenWidth,
            isNetworkImage: false,
            applyImageRadius: true,
            borderRadius: 100,
          ),

          const SizedBox(height: ESizes.spaceBtwSections),

          /// Intro Message
          Text(
            "Hi,",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.normal,
              color: dark ? EColors.white : EColors.black,
            ),
          ),
          const SizedBox(height: ESizes.sm),
          Text(
            "I'm Immanuel Antony Jeyam",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: dark ? EColors.white : EColors.black,
            ),
          ),
          const SizedBox(height: ESizes.sm),

          Text(
            " UI/UX Designer | Flutter Developer",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: dark ? EColors.white : EColors.black,
            ),
          ),
          const SizedBox(height: ESizes.sm),

          const SizedBox(height: ESizes.spaceBtwItems),

          // Button
          SizedBox(
            width: 190,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Get in Touch"),
            ),
          ),
        ],
      ),
    );
  }
}
