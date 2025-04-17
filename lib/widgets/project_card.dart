import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/image_strings.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import "dart:js" as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });

  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        color: EColors.bgLight2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Project Image
          Image.asset(
            project.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),

          // Title
          Padding(
            padding: EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: EColors.white,
              ),
            ),
          ),

          // Subtitle
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: TextStyle(
                fontSize: 12,
                color: EColors.grey,
              ),
            ),
          ),

          Spacer(),

          // Footer
          Container(
            color: EColors.bgLight1,
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 12,
            ),
            child: Row(
              children: [
                Text(
                  "Available on:",
                  style: TextStyle(
                      color: CupertinoColors.systemYellow, fontSize: 10),
                ),
                Spacer(),
                if(project.androidLink != null)
                InkWell(
                  onTap: () {
                    js.context.callMethod('open', [project.androidLink]);
                  },
                  child: Image.asset(
                    EImages.android,
                    width: 20,
                  ),
                ),

                if(project.iosLink != null)
                Padding(
                  padding: EdgeInsets.only(
                    left: 6,
                  ),
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod('open', [project.iosLink]);
                    },
                    child: Image.asset(
                      EImages.iosWhite,
                      width: 17,
                    ),
                  ),
                ),

                if(project.webLink != null)
                Padding(
                  padding: EdgeInsets.only(
                    left: 6,
                  ),
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod('open', [project.webLink]);
                    },
                    child: Image.asset(
                      EImages.web,
                      width: 17,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
