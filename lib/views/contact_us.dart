import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_button.dart';
import 'package:portfolio/views/helper_class.dart';

import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return HelperClass(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: 'Contact ',
                style: AppTextStyles.headingStyles(fontSize: 30),
                children: [
                  TextSpan(
                    text: 'Me!',
                    style: AppTextStyles.headingStyles(
                        fontSize: 30, color: AppColors.robinEdgeBlue),
                  ),
                ],
              ),
            ),
          ),
          Constants.sizedBox(height: 40),
          Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            elevation: 8,
            child: TextField(
              decoration: buildInputDecoration(hintText: "Full Name"),
              style: AppTextStyles.normalStyle(),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            elevation: 8,
            child: TextField(
              decoration: buildInputDecoration(hintText: "Email Address"),
              style: AppTextStyles.normalStyle(),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            elevation: 8,
            child: TextField(
              decoration: buildInputDecoration(hintText: "Mobile Number"),
              style: AppTextStyles.normalStyle(),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            elevation: 8,
            child: TextField(
              decoration: buildInputDecoration(hintText: "Email Subject"),
              style: AppTextStyles.normalStyle(),
            ),
          ),
          Constants.sizedBox(height: 20),
          Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            elevation: 8,
            child: TextField(
              maxLines: 10,
              decoration: buildInputDecoration(hintText: "Your Message"),
              style: AppTextStyles.normalStyle(),
            ),
          ),
          Constants.sizedBox(height: 30),
          AppButtons.buildMaterialButton(
              buttonName: "Send Message", onTap: () {})
        ],
      ),
      tablet: buildForm(),
      desktop: buildForm(),
      paddingWidth: size.width * 0.2,
      bgColor: AppColors.bgColor,
    );
  }

  Column buildForm() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
            text: TextSpan(
              text: 'Contact ',
              style: AppTextStyles.headingStyles(fontSize: 30),
              children: [
                TextSpan(
                  text: 'Me!',
                  style: AppTextStyles.headingStyles(
                      fontSize: 30, color: AppColors.robinEdgeBlue),
                ),
              ],
            ),
          ),
        ),
        Constants.sizedBox(height: 40),
        Row(
          children: [
            Expanded(
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: TextField(
                  decoration: buildInputDecoration(hintText: "Full Name"),
                  style: AppTextStyles.normalStyle(),
                ),
              ),
            ),
            Constants.sizedBox(width: 20),
            Expanded(
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: TextField(
                  decoration: buildInputDecoration(hintText: "Email Address"),
                  style: AppTextStyles.normalStyle(),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: TextField(
                  decoration: buildInputDecoration(hintText: "Mobile Number"),
                  style: AppTextStyles.normalStyle(),
                ),
              ),
            ),
            Constants.sizedBox(width: 20),
            Expanded(
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                elevation: 8,
                child: TextField(
                  decoration: buildInputDecoration(hintText: "Email Subject"),
                  style: AppTextStyles.normalStyle(),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 40),
        Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          elevation: 8,
          child: TextField(
            maxLines: 10,
            decoration: buildInputDecoration(hintText: "Your Message"),
            style: AppTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 30),
        AppButtons.buildMaterialButton(buttonName: "Send Message", onTap: () {})
      ],
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.headerTextStyle(),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
      filled: true,
      fillColor: AppColors.bgColor2,
      focusColor: Colors.blueGrey,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    );
  }
}
