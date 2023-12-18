import 'package:flutter/material.dart';
import 'package:test_software_developer/controller/main_view_controller.dart';
import 'package:test_software_developer/style/text.dart';

Widget screenPage(
  MainViewController controller,
  Size size,
) =>
    ListView(
      children: [
        Text(
          """
Hallo ${controller.txt_name.text},\n
Usia anda saat ini adalah :	
${controller.userAge.value.year} Tahun,	
${controller.userAge.value.month} Bulan,	
${controller.userAge.value.day} Hari\n
Bintang anda adalah	
${controller.userZodiak.value}	
        """,
          style: bold_18_1,
          textAlign: TextAlign.center,
        )
      ],
    );
