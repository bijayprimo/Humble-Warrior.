import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humble_warrior/utils/search_bar/search_bar_UI.dart';
import 'package:humble_warrior/view/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeScreenController controller = Get.find();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: CustomSearchBar(
            textEditingController: controller.searchTextController,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("sfddf"),
          ],
        ),
      ),
    );
  }
}
