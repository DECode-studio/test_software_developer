import 'package:flutter/material.dart';
import 'package:test_software_developer/controller/main_view_controller.dart';
import 'package:test_software_developer/style/color.dart';
import 'package:test_software_developer/widgets/button/button.dart';
import 'package:test_software_developer/widgets/text_field/date_field.dart';
import 'package:test_software_developer/widgets/text_field/text_field.dart';

import 'header.dart';

Widget screenPage(
  MainViewController controller,
  Size size,
) =>
    Column(
      children: [
        headerPage(controller, size),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            children: [
              textBoxTitle(
                textController: controller.txt_name,
                icon: Icons.person_2_rounded,
                inputType: TextInputType.name,
                hint: 'Masukan Nama Anda',
              ),
              const SizedBox(
                height: 15,
              ),
              dateTitlePicker(
                initData: controller.txt_date.value,
                hint: 'Masukan Tanggal Lahir anda',
                icon: Icons.calendar_month,
                onChange: (date) => controller.txt_date.value = date!,
              ),
              const SizedBox(
                height: 25,
              ),
              button(
                onClick: controller.validateData,
                color: mainColor_1,
                text: 'Submit',
              )
            ],
          ),
        )
      ],
    );
