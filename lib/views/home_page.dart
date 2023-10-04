import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/globals/app_assets.dart';
import 'package:portfolio/globals/app_colors.dart';
import 'package:portfolio/globals/app_text_styles.dart';
import 'package:portfolio/globals/constants.dart';
import 'package:portfolio/views/about_me.dart';
import 'package:portfolio/views/helper_class.dart';
import 'package:portfolio/views/my_portfolio.dart';
import 'package:portfolio/views/my_services.dart';
import 'package:portfolio/widgets/profile_animation.dart';

import 'contact_us.dart';
import 'footer_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final socialButtons = <String>[
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.insta,
    AppAssets.github,
  ];

  var socialBI;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor2,
      body:  HelperClass(
          mobile:  Column(
              children: [
                buildHomePersonalInfo(size),
                Constants.sizedBox(height: 24),
               const Expanded(child:  ProfileAnimation())
              ],
            ),
          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [buildHomePersonalInfo(size), const ProfileAnimation()],
          ),
          desktop: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [buildHomePersonalInfo(size), const ProfileAnimation()],
          ),
        ),


      // SingleChildScrollView(
      //   padding: EdgeInsets.only(
      //     top: size.height * 0.05,
      //     // left: size.height * 0.3,
      //     // right: size.height * 0.3
      //   ),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Padding(
      //         padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      //         child:
      //       ),
      //       const SizedBox(
      //         height: 220,
      // ),
      // const AboutMe(),
      // const MyServices(),
      // const MyPortFolio(),
      // const ContactUs(),
      // const FooterClass()
      //     ],
      //   ),
      // ),
    );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            'Hello It\'s Me',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Michael Corleone',
            style: AppTextStyles.headingStyles(),
          ),
        ),
        Constants.sizedBox(height: 15),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 768) {
              return FadeInRight(
                duration: const Duration(milliseconds: 1500),
                child: Column(
                  children: [
                    Text("And I\'m known as ",
                        style: AppTextStyles.headingStyles()),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          'God Father',
                          textStyle:
                              AppTextStyles.montserratStyle(color: Colors.red),
                          speed: Duration(milliseconds: 400),
                        ),
                        TyperAnimatedText(
                          'Don Corleone',
                          textStyle:
                              AppTextStyles.montserratStyle(color: Colors.red),
                        )
                      ],
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    )
                  ],
                ),
              );
            } else {
              return FadeInLeft(
                duration: const Duration(milliseconds: 1500),
                child: Row(
                  children: [
                    Text("And I\'m known as ",
                        style: AppTextStyles.headingStyles()),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          'God Father',
                          textStyle:
                              AppTextStyles.montserratStyle(color: Colors.red),
                          speed: Duration(milliseconds: 400),
                        ),
                        TyperAnimatedText('Don Corleone',
                            textStyle: AppTextStyles.montserratStyle(
                                color: Colors.red))
                      ],
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    )
                  ],
                ),
              );
            }
          },
        ),
        Constants.sizedBox(height: 15),
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          child: SizedBox(
            width: size.width * 0.5,
            child: Text(
              "In 1945 New York City, Corleone crime family don Vito Corleone listens to requests during his daughter Connie"
              "\'s wedding to Carlo. Vito\'s youngest son Michael, a former Marine who has thus far stayed out of the family"
              "business, introduces his girlfriend, Kay Adams, to his family at the reception. Johnny Fontane, a popular singer"
              "and Vito's godson, seeks Vito's help in securing a movie role. Vito sends his consigliere, Tom Hagen, to persuade"
              "studio president Jack Woltz to offer Johnny the part. Woltz refuses Hagen's request at first, but soon complies"
              "after finding the severed head of his prized racing horse in his bed.",
              style: AppTextStyles.normalStyle(),
            ),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInUp(
          duration: const Duration(milliseconds: 1700),
          child: SizedBox(
            height: 48,
            child: ListView.separated(
              itemCount: socialButtons.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, child) =>
                  Constants.sizedBox(width: 8.0),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        socialBI = index;
                      } else {
                        socialBI = null;
                      }
                    });
                  },
                  borderRadius: BorderRadius.circular(550.0),
                  hoverColor: AppColors.themeColor,
                  splashColor: AppColors.lawGreen,
                  child: buildSocialButton(
                      asset: socialButtons[index],
                      hover: socialBI == index ? true : false),
                );
              },
            ),
          ),
        ),
        Constants.sizedBox(height: 18),
        MaterialButton(
          color: AppColors.themeColor,
          splashColor: AppColors.lawGreen,
          onPressed: () {},
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
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

      // const SizedBox(
      //   width: 30,
      // ),
      // Image.asset(
      //   AppAssets.profile1,
      //   width: 300,
      //   height: 330,
      // )
    );
  }

  Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 12,
        color: hover ? AppColors.bgColor : AppColors.themeColor,
        // fit: BoxFit.fill,
      ),
    );
  }
}
