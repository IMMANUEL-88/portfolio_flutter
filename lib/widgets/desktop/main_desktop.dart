import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/image_strings.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/utils/e_rounded_image.dart';
import 'package:my_portfolio/utils/helper_functions.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = EHelperFunctions.isDarkMode(context);   
    final screenWidth = EHelperFunctions.screenWidth(context);
    final screenHeight = EHelperFunctions.screenHeight(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.15,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // --Name--
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Intro Message
              Text(
                "Hi,",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: dark ? EColors.white : EColors.black,
                ),
              ),
              const SizedBox(height: ESizes.sm),
              Text(
                "I'm Immanuel Antony Jeyam",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                  color: dark ? EColors.white : EColors.black,
                ),
              ),
              const SizedBox(height: ESizes.sm),

              Text(
                " UI/UX Designer | Flutter Developer",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: dark ? EColors.white : EColors.black,
                ),
              ),
              const SizedBox(height: ESizes.sm),

              const SizedBox(height: ESizes.spaceBtwItems),

              // Button
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Get in Touch"),
                ),
              ),
            ],
          ),

          // --Image--
          ERoundedImage(
            imageUrl: EImages.profile,
            height: screenHeight / 2,
            width: screenWidth * 0.3,
            isNetworkImage: false,
            applyImageRadius: true,
            borderRadius: 100,
          ),
        ],
      ),
    );
  }
}
