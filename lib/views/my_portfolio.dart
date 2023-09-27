import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_assets.dart';
import 'package:portfolio/globals/constants.dart';

import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';

class MyPortFolio extends StatefulWidget {
  const MyPortFolio({Key? key}) : super(key: key);

  @override
  State<MyPortFolio> createState() => _MyPortFolioState();
}

class _MyPortFolioState extends State<MyPortFolio> {
  List images = <String>[
    AppAssets.skull,
    AppAssets.skull,
    AppAssets.skull,
    AppAssets.skull,
    AppAssets.skull,
    AppAssets.skull,
  ];
  void hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      // width: size.width,
      // height: size.height,
      color: AppColors.bgColor2,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 12),
      alignment: Alignment.center,
      child: Column(
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: 'Latest ',
                style: AppTextStyles.headingStyle(fontSize: 30),
                children: [
                  TextSpan(
                    text: 'Projects',
                    style: AppTextStyles.headingStyle(
                        fontSize: 30, color: AppColors.robinEdgeBlue),
                  ),
                ],
              ),
            ),
          ),
          Constants.sizedBox(height: 40),
          SizedBox(
            height: 800,
            child: GridView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 280,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24),
              itemBuilder: (context, index) {
                var image = images[index];
                return FadeInUpBig(
                  duration: const Duration(milliseconds: 1600),
                  child: InkWell(
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          if (value) {
                            hoveredIndex = index;
                          }
                        });
                      } else {
                        setState(() {
                          if (value) {
                            hoveredIndex = index;
                            
                          }
                        });
                      }
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage(image),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.themeColor.withOpacity(0.2),
                            gradient: LinearGradient(
                                colors: [
                                  AppColors.themeColor.withOpacity(1.0),
                                  AppColors.themeColor.withOpacity(0.9),
                                  AppColors.themeColor.withOpacity(0.8),
                                  AppColors.themeColor.withOpacity(0.6)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'App Development',
                                style: AppTextStyles.montserratStyle(
                                    Colors.white,
                                    fontSize: 20),
                              ),
                              Constants.sizedBox(height: 15),
                              Text(
                                'It is a long established fact that a reader will be distracted by the readable ',
                                style: AppTextStyles.normalStyle(),
                                textAlign: TextAlign.center,
                              ),
                              Constants.sizedBox(height: 22),
                              CircleAvatar(
                                maxRadius: 25,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  AppAssets.talk,
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
