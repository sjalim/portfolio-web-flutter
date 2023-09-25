import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_button.dart';
import 'package:portfolio/globals/app_colors.dart';
import 'package:portfolio/globals/app_text_styles.dart';
import 'package:portfolio/globals/constants.dart';

import '../globals/app_assets.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isHover1 = false;
  bool isHover2 = false;
  bool isHover3 = false;
  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 12),
      alignment: Alignment.center,
      child: Column(
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: 'My ',
                style: AppTextStyles.headingStyle(fontSize: 30),
                children: [
                  TextSpan(
                    text: 'Services',
                    style: AppTextStyles.headingStyle(
                        fontSize: 30, color: AppColors.robinEdgeBlue),
                  ),
                ],
              ),
            ),
          ),
          Constants.sizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  print("Inkwell 1");
                },
                onHover: (value) {
                  setState(() {
                    print("Hover 1");
                    isHover1 = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: 'Colloquial',
                    asset: AppAssets.talk,
                    hover: isHover1),
              ),
              Constants.sizedBox(width: 18),
              InkWell(
                onTap: () {
                  print("Inkwell 2");
                },
                onHover: (value) {
                  setState(() {
                    print("Hover 2");
                    isHover2 = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: 'Colloquial',
                    asset: AppAssets.talk,
                    hover: isHover2),
              ),
              Constants.sizedBox(width: 18),
              InkWell(
                onTap: () {
                  print("Inkwell 3");
                },
                onHover: (value) {
                  setState(() {
                    print("Hover 3");
                    isHover3 = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: 'Colloquial',
                    asset: AppAssets.talk,
                    hover: isHover3),
              ),
            ],
          )
        ],
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer(
      {required String title, required String asset, required bool hover}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: hover ? 410 : 400,
      height: hover ? 510 : 500,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
          color: AppColors.bgColor2,
          borderRadius: BorderRadius.circular(30),
          border:
              hover ? Border.all(color: AppColors.themeColor, width: 2) : null,
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                spreadRadius: 4.0,
                blurRadius: 4.5,
                offset: Offset(3.0, 4.5))
          ]),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 55,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30),
          Text(
            title,
            style: AppTextStyles.montserratStyle(Colors.white),
          ),
          Constants.sizedBox(height: 12),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s'
            'standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type'
            'specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'
            'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing'
            'software like Aldus PageMaker including versions of Lorem Ipsum. ',
            style: AppTextStyles.normalStyle(),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 20),
          AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
        ],
      ),
    );
  }
}
