import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:humble_warrior/utils/app_text.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthWidget {
  Widget optionWidget(
      {Color? bckClr,
      Color? textClr,
      String? title,
      String? imagePath,
      required Function onTap}) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 50,
        width: Get.width * .8,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            // border: Border.all(color: Colors.black, width: 1),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset: const Offset(0.0, 0.75)),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imagePath!,
              fit: BoxFit.cover,
              height: 28.h,
              width: 28.h,
            ).centered().p(2).px(8),
            AppText(title!,
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
            const SizedBox(width: 40),
          ],
        ).p(8),
      ).py(10).px(20),
    );
  }
}

//
// class AuthWidget {
//   Widget optionWidget(
//       {Color? bckClr,
//         Color? textClr,
//         String? title,
//         String? imagePath,
//         required Function onTap}) {
//     return InkWell(
//       onTap: () => onTap(),
//       child: Container(
//         height: 60,
//         width: Get.width * .7,
//         decoration: BoxDecoration(
//             color: bckClr,
//             borderRadius: BorderRadius.circular(4),
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.grey.shade400,
//                   blurRadius: 3,
//                   spreadRadius: 2,
//                   offset: const Offset(0.0, 0.75))
//             ]),
//         child: Row(
//           children: [
//             //   Image.asset(imagePath!,height: 20,width: 20,).px(8),
//             imagePath!=null ? Card(
//               elevation: 5,
//               clipBehavior: Clip.antiAlias,
//               shape: CircleBorder(
//                 side: BorderSide(color: Colors.grey.shade200, width: 1),
//               ),
//               child: Image.asset(
//                 imagePath,
//                 fit: BoxFit.cover,
//                 height: 28.h,
//                 width: 28.h,
//               ).centered().p(2),
//             ).px(8): SizedBox(width: 0,),
//             title!.text.color(textClr).make().px(4),
//           ],
//         ).p(8),
//       ).py(10).px(20),
//     );
//   }
// }
