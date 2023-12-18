import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainViewController extends GetxController {
  var txt_name = TextEditingController();
  var txt_date = DateTime.now().obs;

  @override
  void onInit() {
    super.onInit();
  }

  void validateData() {}
}
