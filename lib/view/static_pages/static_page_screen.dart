import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humble_warrior/modals/response/static_page_model.dart';
import 'package:humble_warrior/utils/app_strings.dart';
import 'package:humble_warrior/utils/app_text.dart';
import 'package:humble_warrior/utils/common/common_widgets.dart';
import 'package:humble_warrior/utils/extensions.dart';
import 'package:humble_warrior/view/static_pages/static_page_controller.dart';

class StaticPagesScreen extends StatelessWidget {
  const StaticPagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StaticPagesController controller = Get.find<StaticPagesController>();
    controller.id = Get.arguments[0];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          20.sh,
          CommonWidgets.titleBar(context,
              title: "Help & support", fontSize: 20),
          20.sh,
   FutureBuilder<List<StaticData>>(
         future:controller.staticPageApi(controller.id),
         builder: (context ,snapshot){
     if(snapshot.connectionState == ConnectionState.waiting){
         return CircularProgressIndicator();
     }
     List<StaticData> staticResponse = snapshot.data!;
     return AppText(staticResponse[0].pageContent.toString(),maxLines: 20,);
   }),
          // Obx(()=> controller.staticPagesResponse.value.isEmpty ? CircularProgressIndicator(): AppText("${controller.staticPagesResponse.value[0].pageContent.toString()}"))
          // Obx(
          //   ()=> controller.staticPagesResponse.value.isEmpty ? CircularProgressIndicator():
          //   Padding(
          //     padding: 20.ph,
          //     child:
          //     // AppText("${controller.staticPagesResponse.value[0].pageContent.toString()}",maxLines: 20),
          //     AppText(
          //       AppStrings.lorem*10,maxLines: 20,
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }
}
