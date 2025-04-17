import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/image_strings.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/utils/helper_functions.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';
import 'package:my_portfolio/widgets/desktop/header_desktop.dart';
import 'package:my_portfolio/widgets/desktop/main_desktop.dart';
import 'package:my_portfolio/widgets/desktop/skills_desktop.dart';
import 'package:my_portfolio/widgets/footer.dart';
import 'package:my_portfolio/widgets/mobile/drawer_mobile.dart';
import 'package:my_portfolio/widgets/mobile/header_mobile.dart';
import 'package:my_portfolio/widgets/mobile/main_mobile.dart';
import 'package:my_portfolio/widgets/mobile/skills_mobile.dart';
import 'package:my_portfolio/widgets/projects_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKeys = List.generate(5, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    bool dark = EHelperFunctions.isDarkMode(context);
    final screenWidth = EHelperFunctions.screenWidth(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xff252734),
          endDrawer: constraints.maxWidth >= ESizes.minDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    // Call Function
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  key: navBarKeys.first,
                ),

                /// --Main--
                if (constraints.maxWidth >= ESizes.minDesktopWidth)
                  HeaderDesktop(
                    onNavItemTap: (int navIndex) {
                      // Call Function
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                if (constraints.maxWidth >= ESizes.minDesktopWidth)
                  MainDesktop()
                else
                  MainMobile(),

                /// --About Me--
                Container(
                  key: navBarKeys[1],
                  height: 500,
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: EColors.bgLight1,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Text(
                        "About Me",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: EColors.white,
                        ),
                      )
                    ],
                  ),
                ),

                /// --Skills--
                Container(
                  key: navBarKeys[2],
                  width: screenWidth,
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: EColors.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Title
                      Text(
                        "Skills & Technologies",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: EColors.white,
                        ),
                      ),

                      const SizedBox(height: 50),

                      // Platform & Skills
                      if (constraints.maxWidth >= ESizes.medDesktopWidth)
                        SkillsDesktop()
                      else
                        SkillsMobile(),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                /// --Projects--
                ProjectsSection(
                  key: navBarKeys[3],
                ),

                /// --Contact--
                ContactSection(
                  key: navBarKeys[4],
                ),

                const SizedBox(
                  height: 30,
                ),

                /// --Footer--
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(
        milliseconds: 500,
      ),
      curve: Curves.easeInOut,
    );
  }
}
