import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_software_developer/model/age.dart';
import 'package:test_software_developer/service/value/user.dart';
import 'package:test_software_developer/style/color.dart';
import 'package:test_software_developer/view/main_modal/main.dart';

class MainViewController extends GetxController {
  var txt_name = TextEditingController();
  var txt_date = DateTime.now().obs;

  var userZodiak = ''.obs;
  var userAge = AgeModel().obs;

  @override
  void onInit() {
    super.onInit();
  }

  void validateData() {
    if (txt_name.text.isEmpty) {
      Get.snackbar(
        'App Message',
        'Maaf nama user belum diisi\nSilahkan isi semua data',
        backgroundColor: white,
      );
    } else {
      pushData();
    }
  }

  void pushData() {
    userZodiak.value = getZodiak(txt_date.value);
    userAge.value = getAge(txt_date.value);

    resultModal();
  }
}
