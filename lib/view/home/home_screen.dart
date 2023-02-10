
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humble_warrior/utils/app_colors.dart';
import 'package:humble_warrior/utils/app_icons.dart';
import 'package:humble_warrior/utils/app_text.dart';
import 'package:humble_warrior/utils/routes/app_routes.dart';
import 'package:humble_warrior/utils/search_bar/search_bar_UI.dart';
import 'package:humble_warrior/view/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeScreenController controller = Get.find();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          title: CustomSearchBar(
            focusNode: controller.focusNode,
            textEditingController: controller.searchTextController,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),

              child: InkWell(
                  onTap: () {}, child: AppIcons.notificationActice(size: 28)),
            )
          ],
        ),
        body: Padding(
         // padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: Get.height *.8,
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 70,
                    width: Get.height,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 25,
                        itemBuilder: (ctx, index) {
                          return SizedBox(
                            height: 80,
                            width: 68,
                            child: Column(
                              children: [
                                Image.network(
                                  controller.products[index % 4],
                                  fit: BoxFit.fitHeight,
                                  height: 50,
                                ),
                                const AppText(
                                  "Product",
                                  fontSize: 12,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  Divider(
                    color: AppColors.grey,
                    height: 2,
                  ),
                  Expanded(
                    child: ListView.builder(

                        shrinkWrap: true,
                        reverse: true,
                        scrollDirection: Axis.vertical,
                        itemCount: HomeOptions.homeOptionsList.length,
                        itemBuilder: (ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.homeOptions,
                                    arguments: <int>[index]);
                              },
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      HomeOptions.homeOptionsList[index].image,
                                      fit: BoxFit.fitWidth,
                                      height: 200,
                                      alignment: Alignment.topCenter,
                                      width: Get.width,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: (Get.width - 250) / 2,
                                    right: (Get.width - 250) / 2,
                                    child: Container(
                                      height: 40,
                                      width: 250,
                                      alignment: Alignment.center,
                                      decoration:
                                          const BoxDecoration(color: Colors.white),
                                      child: AppText(
                                        HomeOptions.homeOptionsList[index].text,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const AppText(
                        "BRAND'S I",
                        fontSize: 24,
                      ),
                      AppIcons.heart(
                        iconColor: Colors.red,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 80,
                    width: Get.height,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 25,
                        itemBuilder: (ctx, index) {
                          return SizedBox(
                            height: 80,
                            width: 120,
                            child: Column(
                              children: [
                                Image.network(
                                  alignment: Alignment.bottomCenter,
                                  controller.brands[index % 4],
                                  fit: BoxFit.contain,
                                  height: 80,
                                  width: 110,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
