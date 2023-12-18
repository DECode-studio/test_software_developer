import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_software_developer/style/box.dart';
import 'package:test_software_developer/style/color.dart';
import 'package:test_software_developer/style/text.dart';
import 'package:test_software_developer/style/text_box.dart';

Widget datePicker({
  required String hint,
  required IconData icon,
  required Function(DateTime?)? onChange,
  DateTime? initData,
}) =>
    Container(
      decoration: customRoundedStyle(color: gray_3, size: 15),
      child: DateTimeField(
        initialValue: initData,
        format: DateFormat("dd MMMM yyyy"),
        decoration: textFieldStyle(hint, icon),
        onChanged: onChange,
        onShowPicker: (context, currentValue) async {
          final date = await showDatePicker(
            context: context,
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            initialDate: DateTime.now(),
          );
          return date;
        },
      ),
    );

Widget dateTitlePicker({
  required String hint,
  required IconData icon,
  required Function(DateTime?)? onChange,
  DateTime? initData,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hint,
          style: bold_12_1,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: customRoundedStyle(color: gray_3, size: 15),
          child: DateTimeField(
            initialValue: initData,
            format: DateFormat("dd MMMM yyyy"),
            decoration: textFieldStyle(hint, icon),
            onChanged: onChange,
            onShowPicker: (context, currentValue) async {
              final date = await showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                initialDate: DateTime.now(),
              );
              return date;
            },
          ),
        ),
      ],
    );
