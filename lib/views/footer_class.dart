import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_colors.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class FooterClass extends StatefulWidget {
  FooterClass({Key? key, required this.scrollController}) : super(key: key);

  final ItemScrollController scrollController;

  @override
  State<FooterClass> createState() => _FooterClassState();
}

class _FooterClassState extends State<FooterClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: AppColors.bgColor2,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: InkWell(
        onTap: () {
          widget.scrollController.scrollTo(
              index: 0,
              duration: const Duration(seconds: 2),
              curve: Curves.fastLinearToSlowEaseIn);
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.themeColor),
          child: const Icon(
            Icons.arrow_upward,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
