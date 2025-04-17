import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/utils/helper_functions.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
    super.key,
    required this.onNavItemTap,
  });
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    bool dark = EHelperFunctions.isDarkMode(context);

    return Drawer(
      backgroundColor: dark ? EColors.dark : EColors.white,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: TextStyle(
                color: dark ? Colors.white : EColors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              onTap: () {
                onNavItemTap(i);
              },
              title: Text(navTitles[i]),
              leading: Icon(navIcons[i]),
            ),
        ],
      ),
    );
  }
}
