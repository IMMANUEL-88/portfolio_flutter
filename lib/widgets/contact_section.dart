import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/image_strings.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: EColors.bgLight1,
      child: Column(
        children: [
          Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          // Name & Email
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= ESizes.minDesktopWidth) {
                  return buildNameandEmailFieldDesktop();
                } else {
                  return buildNameandEmailFieldMobile();
                }
              },
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          // Message
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextField(
              hintText: "Your message",
              maxLine: 16,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          // Send Button
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Get in touch",
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
            ),
            child: Divider(),
          ),

          const SizedBox(
            height: 15,
          ),

          //SNS Links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset(
                  EImages.github,
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedIn]);
                },
                child: Image.asset(
                  EImages.linkedIn,
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset(
                  EImages.instagram,
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildNameandEmailFieldDesktop() {
    return Row(
      children: [
        // Name
        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),

        const SizedBox(
          width: 15,
        ),

        // Email
        Flexible(
          child: CustomTextField(
            hintText: "Your E-mail",
          ),
        ),
      ],
    );
  }

  Column buildNameandEmailFieldMobile() {
    return Column(
      children: [
        // Name
        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),

        const SizedBox(
          height: 15,
        ),

        // Email
        Flexible(
          child: CustomTextField(
            hintText: "Your E-mail",
          ),
        ),
      ],
    );
  }
}
