import 'package:flutter/material.dart';
import 'package:kids_finance/core/constants.dart';

ThemeData lightTheme() => ThemeData(
  brightness: Brightness.light,
  backgroundColor: kSecondaryColor,
  primaryColor: kPrimaryColor,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: h1TextSize,
      fontWeight: FontWeight.w800,
      color: dark,
    ),
    headlineMedium: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: h2TextSize,
      fontWeight: FontWeight.w800,
      color: dark,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: semiBoldTextSize,
      fontWeight: FontWeight.w600,
      color: dark,
    ),
    displayMedium: TextStyle(
      fontFamily: fontNameDefault,
      fontSize: mediumTextSize,
      fontWeight: FontWeight.w500,
      color: dark,
    ),
  ),

  iconTheme: const IconThemeData(
    size: 26.0,
  ),

  buttonTheme: const ButtonThemeData(
    height: 70.0,
    buttonColor: blue,
  ),

  cardColor: kPrimaryColor,
  scaffoldBackgroundColor: kSecondaryColor,
);