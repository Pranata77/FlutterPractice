import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17;

//Warna-warna
Color kPrimaryColor = const Color(0xff5C40CC);
Color kPrimaryDarkColor = const Color(0xff1F1449);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kGreyColor = const Color(0xff9698A9);
Color kGreenColor = const Color(0xff0EC3AE);
Color kRedColor = const Color(0xffEB70A5);
Color kBgColor = const Color(0xffE5E5E5);
Color kInactiveColor = const Color(0xffDBD7EC);
Color kTransparentColor = Colors.transparent;
Color kUnavailableColor = const Color(0xffEBECF1);
Color kAvailableColor = const Color(0xffE0D9FF);

//Font Style Color
TextStyle darkTextStyle = GoogleFonts.poppins(
  color: kPrimaryDarkColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenColor,
);
TextStyle redTextStyle = GoogleFonts.poppins(
  color: kRedColor,
);
TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

//Font Style Weight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
