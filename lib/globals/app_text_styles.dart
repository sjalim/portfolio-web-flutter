import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white);
  }

  static TextStyle montserratStyle(Color color) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    );
  }

  static TextStyle headingStyle() {
    return GoogleFonts.rubikMoonrocks(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 2);
  }

  static TextStyle normalStyle() {
    return GoogleFonts.signikaNegative(
      fontWeight:  FontWeight.w500,
      fontSize: 16,
      color: Colors.white,
      letterSpacing: 1
    );
  }
}
