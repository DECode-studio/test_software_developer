import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_software_developer/style/box.dart';
import 'package:test_software_developer/style/color.dart';
import 'package:test_software_developer/style/text.dart';

Widget button({
  required Function() onClick,
  required Color color,
  required String text,
  double? width,
  bool shadow = false,
  double? borderRadius,
}) =>
    Container(
      width: width ?? Get.width,
      padding: GetPlatform.isMobile
          ? null
          : const EdgeInsets.symmetric(vertical: 10),
      decoration: shadow == false
          ? customRoundedStyle(color: color, size: borderRadius)
          : customRoundedShadowStyle(color: color, size: borderRadius),
      child: TextButton(
        onPressed: onClick,
        child: Text(text, style: bold_15_2),
      ),
    );

Widget buttonIcon({
  required Function() onClick,
  required Color color,
  required String text,
  required IconData icon,
  double? width,
  bool shadow = false,
  double? borderRadius,
}) =>
    Container(
      width: width ?? Get.width,
      padding: GetPlatform.isMobile
          ? null
          : const EdgeInsets.symmetric(vertical: 10),
      decoration: shadow == false
          ? customRoundedStyle(color: color, size: borderRadius)
          : customRoundedShadowStyle(color: color, size: borderRadius),
      child: TextButton.icon(
        onPressed: onClick,
        icon: Icon(icon, color: white),
        label: Text(text, style: bold_15_2),
      ),
    );
