import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_assets.dart';
import 'package:portfolio/globals/constants.dart';
import 'package:portfolio/views/helper_class.dart';

import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';

class MyPortFolio extends StatefulWidget {
  const MyPortFolio({Key? key}) : super(key: key);

  @override
  State<MyPortFolio> createState() => _MyPortFolioState();
}

class _MyPortFolioState extends State<MyPortFolio> {
  final onHoverEffect = Matrix4.identity()..scale(1.1);

  List images = <String>[
    AppAssets.skull,
    AppAssets.skull,
    AppAssets.skull,
    AppAssets.skull,
    AppAssets.skull,
    AppAssets.skull,
  ];
  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return  HelperClass(
        mobile: Column(
          children: [
            buildProjectText(),
            Constants.sizedBox(height: 40),
            buildProjectGridView(crossAxisCount: 1),
          ],
        ),
        tablet: Column(
          children: [
            buildProjectText(),
            Constants.sizedBox(height: 40),
            buildProjectGridView(crossAxisCount: 2),
          ],
        ),
        desktop: Column(
          children: [
            buildProjectText(),
            Constants.sizedBox(height: 40),
            buildProjectGridView(crossAxisCount: 3),
          ],
        ),
          paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  GridView buildProjectGridView({required int crossAxisCount}) {
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisExtent: 300,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24),
      itemBuilder: (context, index) {
        var image = images[index];
        return FadeInUpBig(
          duration: const Duration(milliseconds: 1600),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                if (value) {
                  hoveredIndex = index;
                } else {
                  hoveredIndex = null;
                }
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Visibility(
                  visible: hoveredIndex == index,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    transform: index == hoveredIndex ? onHoverEffect : null,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.themeColor.withOpacity(0.2),
                      gradient: LinearGradient(
                          colors: [
                            AppColors.lawGreen.withOpacity(1.0),
                            AppColors.lawGreen.withOpacity(0.9),
                            AppColors.lawGreen.withOpacity(0.8),
                            AppColors.lawGreen.withOpacity(0.6)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'App Development',
                          style: AppTextStyles.montserratStyle(
                              color: Colors.white, fontSize: 30),
                        ),
                        Constants.sizedBox(height: 15),
                        Text(
                          'It is a long established fact that a reader will be distracted by the readable ',
                          style: AppTextStyles.normalStyle(),
                          textAlign: TextAlign.center,
                        ),
                        Constants.sizedBox(height: 22),
                        const CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.share,
                            color: Colors.green,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  FadeInDown buildProjectText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Latest ',
          style: AppTextStyles.headingStyles(fontSize: 30),
          children: [
            TextSpan(
              text: 'Projects',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            ),
          ],
        ),
      ),
    );
  }
}
