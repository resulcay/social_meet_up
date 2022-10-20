// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

import '../constants.dart';

class AppBarCategoryModel {
  final String iconPath;
  final String categoryName;
  final Color? borderColor;

  AppBarCategoryModel({
    required this.iconPath,
    required this.categoryName,
    this.borderColor,
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
      borderColor:
          map['borderColor'] != null ? Color(map['borderColor'] as int) : null,
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
    borderColor: kNormalPink,
  ),
  AppBarCategoryModel(
    iconPath: "assets/images/heart.png",
    categoryName: "HEALTH",
    borderColor: kNormalGreen,
  ),
  AppBarCategoryModel(
    iconPath: "assets/images/headphones.png",
    categoryName: "MUSIC",
    borderColor: kSeaBlue,
  ),
  AppBarCategoryModel(
    iconPath: "assets/images/reading-up.png",
    categoryName: "READING",
    borderColor: kDarkestPurple,
  ),
];
