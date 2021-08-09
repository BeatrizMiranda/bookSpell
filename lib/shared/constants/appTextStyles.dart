import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appColors.dart';

class AppTextStyles {
  static final splashHeading = GoogleFonts.firaCode(
    fontSize: 23,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static final smallLink = GoogleFonts.montserrat(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.orange,
    decoration: TextDecoration.underline,
  );
  static final title = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static final textLink = GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static final subtitle = GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static final corpo = GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static final mediumLink = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.orange,
    decoration: TextDecoration.underline,
  );
  static final smallText = GoogleFonts.montserrat(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static final inputText = GoogleFonts.firaCode(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static final inputTextSmall = GoogleFonts.firaCode(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static final categoryText = GoogleFonts.montserrat(
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static final firaCodeSmall = GoogleFonts.firaCode(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static final titleRegular = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static final corpoBold = GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
}
