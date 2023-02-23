import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humble_warrior/utils/extensions.dart';
import 'package:humble_warrior/view/productDetail/front_page_details_screen/front_page_detail_controller.dart';
import 'package:humble_warrior/view/productDetail/product_detail_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../modals/response/front_page_response_model.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/search_bar/search_bar_ui.dart';
import '../../home_option/tab_screens/front_page_deals.dart';

class FrontPageDetailScreen extends StatelessWidget with ProductDetailWidget {
  FrontPageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FrontPageDetailController controller = Get.find();
    final FrontPageDetails details = Get.arguments[0];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: AppBar(
            leadingWidth: 35,
            centerTitle: false,
            title: CustomSearchBar(
              focusNode: controller.focusNode,
              textEditingController: controller.searchTextController,
            ),
            leading: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: 20.pl,
                  child: AppIcons.backArrrowIos(),
                )),
          ),
        ),
      ),
      // AppBar(
      //   centerTitle: true,
      //   title: CustomSearchBar(
      //     focusNode: controller.focusNode,
      //     textEditingController: controller.searchTextController,
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: 8.ph,
              child: frontPageCard(details, 0),
            ),
            productText(context, details.productName),
            productDescription(),
          ],
        ).p(10),
      ),
    );
  }
}
