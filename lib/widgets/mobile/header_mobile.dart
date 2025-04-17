import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/utils/styles/styles.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: eHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap), // SiteLogo
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
          const SizedBox(width: ESizes.md),
        ],
      ),
    );
  }
}
