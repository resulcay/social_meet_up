// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

import '../constants.dart';

class EventCardModel {
  final String day;
  final String timeOfDay;
  final String completerTimeText;
  final String descriptionText;
  final String imagePath;
  final String iconPath;
  final String userName;
  EventCardModel({
    required this.day,
    required this.timeOfDay,
    required this.completerTimeText,
    required this.descriptionText,
    required this.imagePath,
    required this.iconPath,
    required this.userName,
  });
}

List<EventCardModel> eventCards = [
  EventCardModel(
    day: "TODAY",
    timeOfDay: "5:40",
    completerTimeText: "AM",
    descriptionText: "Yoga and Meditation for Beginners",
    imagePath: "assets/images/avatar-man.png",
    iconPath: "assets/images/impulse.png",
    userName: "Resul Cay",
  ),
  EventCardModel(
    day: "MONDAY",
    timeOfDay: "6:15",
    completerTimeText: "PM",
    descriptionText: "Practice French, English and Chinese",
    imagePath: "assets/images/avatar-woman.png",
    iconPath: "assets/images/triangle-shape.png",
    userName: "Maya Carter",
  ),
  EventCardModel(
    day: "TUESDAY",
    timeOfDay: "7:30",
    completerTimeText: "AM",
    descriptionText: "Vegetarians Recipe Meetup",
    imagePath: "assets/images/avatar-man.png",
    iconPath: "assets/images/thermometer.png",
    userName: "John Derive",
  ),
  EventCardModel(
    day: "SATURDAY",
    timeOfDay: "9:45",
    completerTimeText: "PM",
    descriptionText: "Sports Lover Training Session",
    imagePath: "assets/images/avatar-woman.png",
    iconPath: "assets/images/world.png",
    userName: "Susan Chipper",
  ),
];

List<Color> eventCardColors = [
  kNormalPink,
  kDarkPink,
  kDarkestPurple,
  kNormalGreen
];
// remove at index 0 then add end of array Colors.transparent.
List<Color> eventCardBackgroundColors = [
  kDarkPink,
  kDarkestPurple,
  kNormalGreen,
  Colors.transparent
];
List<Color> eventCardColors2 = [
  kNormalGreen,
  kDarkestPurple, // pass
  kDarkBlueVariant,
  kDarkBlue,
];
List<Color> eventCardBackgroundColors2 = [
  kMiddleGreen,
  kMiddleGreen, // pass
  kDarkBlue,
  Colors.transparent
];
List<Color> eventCardColors3 = [
  kSeaBlue,
  kHighBlue,
  kDarkBlue,
  kNormalGreen,
];
List<Color> eventCardBackgroundColors3 = [
  kHighBlue,
  kDarkBlue,
  kNormalGreen,
  Colors.transparent
];

List<Color> appBarBackgroundColor = [
  kNormalPink,
  kNormalGreen,
  kSeaBlue,
  kNormalPink,
];
