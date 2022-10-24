import 'package:flutter/material.dart';

// Constant Colors
const Color kDarkGreen = Color(0xFF417623);
const Color kDarkBlue = Color(0xFF132641);
const Color kSeaBlue = Color(0xFF4EBDEF);
const Color kDarkBlueVariant = Color(0xFF253E12);
const Color kMiddleGreen = Color(0xFF52912E);
const Color kNormalGreen = Color(0xFFB4C55B);
const Color kNormalWhite = Color(0xFFFFFFFF);
const Color kNormalBlue = Color(0xFF4F8DCB);
const Color kDarkWhite = Color(0xFFF1F0F2);
const Color kNormalPurple = Color(0xFF5F4591);
const Color kDarkPurple = Color(0xFF352641);
const Color kWhitePurple = Color(0xFF9599B3);
const Color kDarkestPurple = Color(0xFF241332);
const Color kDarkPink = Color(0xFF8A56AC);
const Color kNormalPink = Color(0xFFD47FA6);
const Color kDeepBlue = Color(0xFF374750);
const Color kGrey = Color(0xFF979797);

// Constant TextStyles

TextStyle kTextStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: kNormalWhite.withOpacity(.48));

// Constant ScrollPhysics

BouncingScrollPhysics kBounceScroll = const BouncingScrollPhysics();
NeverScrollableScrollPhysics kNeverScroll =
    const NeverScrollableScrollPhysics();
