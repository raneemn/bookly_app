import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20Regular = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static TextStyle textStyle20 =
      GoogleFonts.playfairDisplay(fontSize: 20, fontWeight: FontWeight.normal);

  static TextStyle textStyle30 =
      GoogleFonts.playfairDisplay(fontSize: 30, fontWeight: FontWeight.normal);
}
