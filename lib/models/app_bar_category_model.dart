// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

import '../constants.dart';

class AppBarCategoryModel {
  final String iconPath;
  final String categoryName;
  AppBarCategoryModel({
    required this.iconPath,
    required this.categoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iconPath': iconPath,
      'categoryName': categoryName,
    };
  }

  factory AppBarCategoryModel.fromMap(Map<String, dynamic> map) {
    return AppBarCategoryModel(
      iconPath: map['iconPath'] as String,
      categoryName: map['categoryName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppBarCategoryModel.fromJson(String source) =>
      AppBarCategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<AppBarCategoryModel> categories = [
  AppBarCategoryModel(
    iconPath: "assets/images/reading-up.png",
    categoryName: "TRENDING",
  ),
  AppBarCategoryModel(
    iconPath: "assets/images/heart.png",
    categoryName: "HEALTH",
  ),
  AppBarCategoryModel(
    iconPath: "assets/images/headphones.png",
    categoryName: "MUSIC",
  ),
  AppBarCategoryModel(
    iconPath: "assets/images/book-open.png",
    categoryName: "READING",
  ),
];

List<Color> appBarBorderColors = [
  kNormalPink,
  kNormalGreen,
  kSeaBlue,
  kDarkestPurple
];
