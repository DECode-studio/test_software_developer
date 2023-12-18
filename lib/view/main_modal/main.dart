import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_software_developer/controller/main_view_controller.dart';
import 'package:test_software_developer/style/color.dart';

import 'widgets/header.dart';
import 'widgets/screen.dart';

void resultModal() => Get.dialog(
      barrierDismissible: false,
      AlertDialog(
        contentPadding: const EdgeInsets.all(0),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        content: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const SizedBox(
            width: 600,
            height: 400,
            child: ConfigBannerClientPage(),
          ),
        ),
      ),
    );

class ConfigBannerClientPage extends StatelessWidget {
  const ConfigBannerClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GetBuilder<MainViewController>(
      init: MainViewController(),
      builder: (controller) => Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          flexibleSpace: headerPage(controller, size),
        ),
        body: screenPage(controller, size),
      ),
    );
  }
}
