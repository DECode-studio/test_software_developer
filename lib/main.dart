import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'service/router/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WahidApp());
}

class WahidApp extends StatelessWidget {
  const WahidApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test Software Developer',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: appRoutes,
    );
  }
}
