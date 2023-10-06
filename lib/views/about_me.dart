import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_assets.dart';
import 'package:portfolio/globals/app_button.dart';
import 'package:portfolio/globals/app_colors.dart';
import 'package:portfolio/globals/constants.dart';
import 'package:portfolio/views/helper_class.dart';

import '../globals/app_text_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return HelperClass(
        mobile: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildAboutMeContents(),
            Constants.sizedBox(height: 25),
            buildProfilePicture(),
          ],
        ),
        tablet: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildProfilePicture(),
            Constants.sizedBox(width: 25),
          Expanded(child: buildAboutMeContents())
          ],
        ),
        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildProfilePicture(),
            Constants.sizedBox(width: 25),
          Expanded(child: buildAboutMeContents())
          ],
        ),
              paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );

    // Container(
    //   height: size.height,
    //   color: AppColors.bgColor2,
    //   child:
    // );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: Duration(milliseconds: 1400),
      child: Image.asset(
        AppAssets.profile2,
        height: 450,
        width: 400,
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: RichText(
            text: TextSpan(
              text: 'About ',
              style: AppTextStyles.headingStyles(fontSize: 30),
              children: [
                TextSpan(
                  text: 'Me!',
                  style: AppTextStyles.headingStyles(
                      fontSize: 30, color: Colors.white),
                ),
              ],
            ),
          ),
          // child: Text(
          //   'About Me',
          //   style: AppTextStyles.headingStyle(),
          // ),
        ),
        Constants.sizedBox(height: 6),
        FadeInLeft(
          duration: Duration(milliseconds: 1400),
          child: Text(
            'God Father!',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 8),
        FadeInLeft(
          duration: Duration(milliseconds: 1600),
          
          child: Text(
            
            't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
            'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here,'
            'content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as'
            'their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions'
            'have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
            style: AppTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInUp(
            duration: const Duration(milliseconds: 1800),
            child: AppButtons.buildMaterialButton(
                buttonName: "Read More", onTap: () {}))
      ],
    );
  }
}
