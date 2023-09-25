import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextStyle() {
    return const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white, letterSpacing: 1.7);
  }

  static TextStyle montserratStyle(Color color) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    );
  }

  static TextStyle headingStyle(
      {double fontSize = 36, Color color = Colors.white}) {
    return GoogleFonts.rubikMoonrocks(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
        letterSpacing: 2);
  }

  static TextStyle normalStyle() {
    return GoogleFonts.signikaNegative(
        fontWeight: FontWeight.normal,
        fontSize: 16,
        color: Colors.white,
        letterSpacing: 1);
  }
}
