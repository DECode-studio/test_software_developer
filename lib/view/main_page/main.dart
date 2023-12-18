import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_software_developer/controller/main_view_controller.dart';
import 'package:test_software_developer/style/color.dart';

import 'widgets/screen.dart';

class MainViewPage extends StatelessWidget {
  const MainViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GetBuilder<MainViewController>(
      init: MainViewController(),
      builder: (controller) => Scaffold(
        backgroundColor: white,
        body: screenPage(controller, size),
      ),
    );
  }
}
