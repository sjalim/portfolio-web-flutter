import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_colors.dart';
import 'package:portfolio/globals/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Hello It\'s Me',
                    style: AppTextStyles.montserratStyle(),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
