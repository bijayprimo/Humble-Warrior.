import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humble_warrior/utils/image_path_assets.dart';
import 'package:humble_warrior/view/splash/spalsh_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController controller = Get.find();
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Image.asset(
              ImagePathAssets.hw_logo,
              height: 200,
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
