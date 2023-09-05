import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/globals/app_assets.dart';
import 'package:portfolio/globals/app_colors.dart';
import 'package:portfolio/globals/app_text_styles.dart';
import 'package:portfolio/globals/constants.dart';
import 'package:portfolio/widgets/profile_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 10,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Portfolio'),
            Spacer(),
            Text(
              'Home',
              style: AppTextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              'Education',
              style: AppTextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              'Project',
              style: AppTextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              'Skill',
              style: AppTextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              'Research',
              style: AppTextStyles.headerTextStyle(),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              'Contact',
              style: AppTextStyles.headerTextStyle(),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.3,
            left: size.height * 0.3,
            right: size.height * 0.3),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      duration: const Duration(milliseconds: 1200),
                      child: Text(
                        'Hello It\'s Me',
                        style: AppTextStyles.montserratStyle(Colors.white),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInRight(
                      duration: const Duration(milliseconds: 1400),
                      child: Text(
                        'Michael Corleone',
                        style: AppTextStyles.headingStyle(),
                      ),
                    ),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 1500),
                      child: Row(
                        children: [
                          Text("And I\'m known as ",
                              style:
                                  AppTextStyles.montserratStyle(Colors.white)),
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                'God Father',
                                textStyle:
                                    AppTextStyles.montserratStyle(Colors.red),
                                speed: Duration(milliseconds: 400),
                              ),
                              TyperAnimatedText('Don Corleone',
                                  textStyle:
                                      AppTextStyles.montserratStyle(Colors.red))
                            ],
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          )
                        ],
                      ),
                    ),
                    FadeInDown(
                      duration: const Duration(milliseconds: 1600),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                          "In 1945 New York City, Corleone crime family don Vito Corleone listens to requests during his daughter Connie \'s wedding to Carlo. Vito\'s youngest son Michael, a former Marine who has thus far stayed out of the family business, introduces his girlfriend, Kay Adams, to his family at the reception. Johnny Fontane, a popular singer and Vito's godson, seeks Vito's help in securing a movie role. Vito sends his consigliere, Tom Hagen, to persuade studio president Jack Woltz to offer Johnny the part. Woltz refuses Hagen's request at first, but soon complies after finding the severed head of his prized racing horse in his bed.",
                          style: AppTextStyles.normalStyle(),
                        ),
                      ),
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1700),
                      child: Row(
                        children: [
                          buildSocialButton(asset: AppAssets.facebook),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.github),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.insta),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.linkedIn),
                          Constants.sizedBox(width: 12),
                          buildSocialButton(asset: AppAssets.twitter),
                        ],
                      ),
                    ),
                    Constants.sizedBox(height: 18),
                    MaterialButton(
                      color: AppColors.themeColor,
                      splashColor: AppColors.lawGreen,
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 8),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      hoverColor: AppColors.aqua,
                      elevation: 6,
                      height: 50,
                      minWidth: 130,
                      focusElevation: 12,
                      child: Text(
                        'Download CV',
                        style: AppTextStyles.headerTextStyle(),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                const ProfileAnimation()
                // Image.asset(
                //   AppAssets.profile1,
                //   width: 300,
                //   height: 330,
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Ink buildSocialButton({required String asset}) {
  return Ink(
    width: 45,
    height: 45,
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle),
    padding: const EdgeInsets.all(6.0),
    child: InkWell(
      onTap: () {},
      radius: 20,
      borderRadius: BorderRadius.circular(500.0),
      splashColor: AppColors.lawGreen,
      hoverColor: AppColors.aqua,
      child: CircleAvatar(
        maxRadius: 20,
        backgroundColor: AppColors.bgColor,
        child: Image.asset(
          asset,
          color: AppColors.themeColor,
          width: 20,
          height: 24,
        ),
      ),
    ),
  );
}
