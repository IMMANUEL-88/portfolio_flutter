import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/helper_functions.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = EHelperFunctions.screenWidth(context);
    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          /// Work Project Title
          Text(
            "Work Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: EColors.white,
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          /// Work project Cards
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: workProjectUtils[i],
                  ),
              ],
            ),
          ),

          const SizedBox(
            height: 80,
          ),

          /// Hobby Project Title
          Text(
            "Hobby Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: EColors.white,
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          /// Hobby project Cards
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: hobbyProjectUtils[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
