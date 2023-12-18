import 'package:flutter/material.dart';
import 'package:test_software_developer/controller/main_view_controller.dart';
import 'package:test_software_developer/service/value/time_status.dart';
import 'package:test_software_developer/style/color.dart';
import 'package:test_software_developer/style/text.dart';

Widget headerPage(
  MainViewController controller,
  Size size,
) =>
    Container(
      height: 60,
      width: size.width,
      color: mainColor_1,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 45,
            height: 45,
            child: CircleAvatar(
              backgroundColor: white,
              child: Icon(
                Icons.person,
                color: mainColor_1,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  timeStatus().value,
                  style: normal_12_2,
                ),
                Text(
                  'Pengguna',
                  style: bold_15_2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
