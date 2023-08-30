import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_colors.dart';
import 'package:portfolio/globals/app_text_styles.dart';
import 'package:portfolio/globals/constants.dart';

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
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello It\'s Me',
                      style: AppTextStyles.montserratStyle(),
                    ),
                    Constants.sizedBox(height:15),
                    Text(
                      'Michael Corleone',
                      style: AppTextStyles.headingStyle(),
                    ),
                    Text("And I\'m known as God Father", style: AppTextStyles.montserratStyle())
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
