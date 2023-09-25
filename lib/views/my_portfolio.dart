import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/constants.dart';

import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';

class MyPortFolio extends StatefulWidget {
  const MyPortFolio({Key? key}) : super(key: key);

  @override
  State<MyPortFolio> createState() => _MyPortFolioState();
}

class _MyPortFolioState extends State<MyPortFolio> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // TODO: implement build
    throw Container(
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
          Constants.sizedBox(height: 40),
          GridView.builder(
            itemCount: 6,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(color: AppColors.aqua,);
              })
        ],
      ),
    );
  }
}
