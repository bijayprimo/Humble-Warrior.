import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humble_warrior/utils/app_icons.dart';
import 'package:humble_warrior/utils/app_strings.dart';
import 'package:humble_warrior/utils/app_text.dart';
import 'package:humble_warrior/utils/helpers/extensions.dart';
import 'package:humble_warrior/view/about_donna/about_controller.dart';
import 'package:readmore/readmore.dart';


import '../../utils/image_path_network.dart';
import '../home/home_controller.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AboutScreenController controller = Get.put(AboutScreenController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(children: [
          _aboutButton(),
          _showImg(),
          _details(),
          _seeCopyButton(),
          10.sh,
          _brandRow(),

          _brandList(),
        ]),
      ),
    );
  }

  _aboutButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      margin: EdgeInsets.symmetric(horizontal: 0,vertical: 30),
      width: MediaQuery.of(Get.context!).size.width,
      decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(
            color: Colors.grey.shade300,spreadRadius: 2,blurRadius: 3,
          )]
      ),
      child: AppText(aboutDonnaTxt,fontWeight: FontWeight.bold,textAlign: TextAlign.center),
    );
  }

  _showImg(){
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.network(
        "https://humblewarrior.com/wp-content/uploads/2022/11/Facetune_20-06-2022-06-51-2.jpg",
        fit: BoxFit.fitWidth,
        height: 200,
        alignment: Alignment.topCenter,
        width: Get.width,
      ),
    );
  }

  _details(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 20,horizontal: 0),
      width: MediaQuery.of(Get.context!).size.width,
      decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(
            color: Colors.grey.shade300,spreadRadius: 2,blurRadius: 3,
          )]
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AppText('Hello Gourgeos!',fontWeight: FontWeight.bold,),
            ReadMoreText(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              trimLines: 10,
              trimMode: TrimMode.Line,
              trimCollapsedText: "read more",
              trimExpandedText: "read less",
              lessStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue),
              moreStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue),
            ),
          ]),
    );
  }

  _seeCopyButton(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      width: MediaQuery.of(Get.context!).size.width,
      decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(
            color: Colors.grey.shade300,spreadRadius: 2,blurRadius: 3,
          )]
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
        TextSpan(text:  seeCopyHumbleTxt,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
        WidgetSpan(child: 10.sw),
        TextSpan(text: hereTxt,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 16) )
      ]),),

    );
  }

  _brandRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AppText(
              "BRAND'S I",
              fontSize: 18,
            ),
            AppIcons.heart(
              iconColor: Colors.red,
            ),
          ],
        ),
        AppText(
          "View All",
          fontSize: 16,
        ),
      ],
    );
  }

  _brandList(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 70,
      width: Get.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 25,
          itemBuilder: (ctx, index) {
            return SizedBox(
              height: 80,
              width: 68,
              child: Column(
                children: [
                  Image.network(
                    ImagePathNetwork.feature,
                    fit: BoxFit.fitHeight,
                    height: 50,
                  ),
                  Text(
                    "Product",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            );
          }),
    );
  }

}
