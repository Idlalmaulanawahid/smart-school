import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;
double sizeBoxheight = 20.0;

MaterialColor kPrimaryTheme = const MaterialColor(
  0xFF5EB2F2, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
  <int, Color>{
    50: Color(0xFF5EB2F2), //10%
    100: Color(0xFF5EB2F2), //20%
    200: Color(0xFF5EB2F2), //30%
    300: Color(0xFF5EB2F2), //40%
    400: Color(0xFF5EB2F2), //50%
    500: Color(0xFF5EB2F2), //60%
    600: Color(0xFF5EB2F2), //70%
    700: Color(0xFF5EB2F2), //80%
    800: Color(0xFF5EB2F2), //90%
    900: Color(0xFF5EB2F2), //100%
  },
);

Color kPrimaryColor = const Color(0xFF5EB2F2);
Color kBlackColor = const Color(0xFF000000);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kGreyColor = const Color(0xff94959b);
Color kWhiteGreyColor = const Color(0xfff1f1f5);
Color kGreenColor = const Color(0xff00C853);
Color kRedColor = const Color(0xFFD50000);
Color kBackgroundColor = const Color(0xffFAFAFA);
Color kInactiveColor = const Color(0xffDBD7EC);
Color kTransparentColor = Colors.transparent;
Color kAvailableColor = const Color(0xffE0D9FF);
Color kUnavailableColor = const Color(0xffEBECF1);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle whiteGreyTextStyle = GoogleFonts.poppins(
  color: kWhiteGreyColor,
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
TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

double fontSizeStandard = 12;
double fontSizeSmall = 14;
double fontSizeMedium = 16;
double fontSizeBig = 20;
