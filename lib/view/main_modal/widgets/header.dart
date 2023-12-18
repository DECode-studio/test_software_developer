import 'package:flutter/material.dart';
import 'package:test_software_developer/controller/main_view_controller.dart';
import 'package:test_software_developer/service/router/navigator.dart';
import 'package:test_software_developer/style/color.dart';
import 'package:test_software_developer/style/text.dart';

Widget headerPage(
  MainViewController controller,
  Size size,
) =>
    Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => Navigate().back(),
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: mainColor_1,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: desktopTitle(controller),
          )
        ],
      ),
    );

Widget desktopTitle(
  MainViewController controller,
) =>
    SizedBox(
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Page / Result / Detail',
            style: bold_12_4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Detail Result',
            style: normal_20_4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
