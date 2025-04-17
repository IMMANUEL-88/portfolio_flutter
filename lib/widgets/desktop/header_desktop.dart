import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/utils/styles/styles.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    required this.onNavItemTap,
  });

  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: eHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {
              // EHelperFunctions.navigateToScreen(context, HomePage());
            },
          ),
          Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: ESizes.md),
              child: TextButton(
                onPressed: () {
                  onNavItemTap(i);
                },
                child: Text(
                  navTitles[i],
                  style: TextStyle(
                    fontSize: ESizes.md,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
