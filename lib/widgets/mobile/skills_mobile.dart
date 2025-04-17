import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          // Platforms
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: EColors.bgLight2,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                leading: Image.asset(platformItems[i]["img"], width: 26),
                title: Text(platformItems[i]["title"]),
              ),
            ),

          const SizedBox(height: 50),

          // Skills
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: EColors.bgLight2),
                  ),
                  backgroundColor: EColors.bgLight2,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  label: Text(skillItems[i]["title"]),
                  avatar: Image.asset(skillItems[i]["img"]),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
