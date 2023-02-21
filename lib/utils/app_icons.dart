import 'package:flutter/material.dart';
import 'package:humble_warrior/utils/app_colors.dart';
import 'package:humble_warrior/utils/image_path_assets.dart';

class AppIcons {
  // IconData

  //Bottom Navigation ==============>
  // static Icon home() => const Icon(Icons.home);

  // static Icon favourite(BuildContext context) => Icon(Icons.favorite_outlined,color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,);

  static Image favourite(BuildContext context) => Image.asset(
    ImagePathAssets.heartIcon,
    height: 20,
    color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
  );

  static Image unselectedfavourite(BuildContext context , Color color) => Image.asset(
    ImagePathAssets.heartIcon,
    height: 20,
    color:color,
    // color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
  );

  static Icon bag() => const Icon(Icons.shopping_bag);

  static Image check(BuildContext context ) => Image.asset(
        ImagePathAssets.amazonIcon,
        height: 22,
        color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
      );
  static Image unselectedCheck(BuildContext context , Color color) => Image.asset(
        ImagePathAssets.amazonIcon,
        height: 20,
        color:color,
        // color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      );

  static Image home(BuildContext context ) => Image.asset(
        ImagePathAssets.homeIcon,
        height: 20,
        color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
      );
  static Image unselectedHome(BuildContext context , Color color) => Image.asset(
        ImagePathAssets.homeIcon,
        height: 20,
        color: color,
        // color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      );

  static Image notification(BuildContext context ) =>
      Image.asset(
        // 'assets/image/bell.png',
        //color: Theme.of(context).textTheme.displayLarge!.color!,
        ImagePathAssets.notificationIcon,
        height: 40,
        width: 30,
      );


  static Image join(BuildContext context) => Image.asset(
    ImagePathAssets.facebookIcon,
    height: 20,
    color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
  );

  static Image unselectedJoin(BuildContext context , Color color) => Image.asset(
    ImagePathAssets.facebookIcon,
    height: 20,
    color: color,
    // color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
  );

  static Image person(BuildContext context ) => Image.asset(
    ImagePathAssets.personIcon,
    height: 20,
    // color: AppColors.grey,
    color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
  );

  static Image unselectedPerson(BuildContext context , Color color) => Image.asset(
    ImagePathAssets.personIcon,
    height: 20,
    // color: AppColors.grey,
    color: color,
  );

  // static Icon join(BuildContext context) =>  Icon(Icons.facebook, color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,);

  // static Icon person(BuildContext context) =>  Icon(Icons.person, color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,);

  //<=========== Bottom Navigation

  //Action Bar ===========>
  static Icon refresh({Color iconColor = Colors.black}) => Icon(
        Icons.refresh,
        color: iconColor,
      );

  static Icon share({Color iconColor = Colors.black}) => Icon(
        Icons.share,
        color: iconColor,
      );

  static Icon sort({Color? iconColor}) => Icon(Icons.sort, color: iconColor);

  // static Icon notification({Color iconColor = Colors.black}) =>
  //     Icon(Icons.notifications_none_rounded, color: iconColor,size: 30,);

  static Icon notificationActice({Color? iconColor, double size = 24}) => Icon(
        Icons.notifications_active,
        color: iconColor,
        size: size,
      );

  static Icon filter({Color? iconColor, double size = 24}) => Icon(
        Icons.sort,
        color: iconColor,
        size: size,
      );

  //<=========Action Bar

  //Account Icons===========>
  static Icon accountIcon({Color iconColor = Colors.black}) =>
      Icon(Icons.login, color: iconColor);

  static Icon rightArrow({Color iconColor = Colors.black}) =>
      Icon(Icons.chevron_right, color: iconColor);

  static Icon next({Color? iconColor}) => Icon(
        Icons.arrow_forward_ios,
        color: iconColor,
      );

  static Icon backArrrowIos({Color? iconColor}) => Icon(
    Icons.arrow_back_ios,
    color: iconColor,
  );

  static Icon backArrow({Color? iconColor, double size = 24}) =>
      Icon(Icons.arrow_back, size: size, color: iconColor);

  static Icon cross({Color iconColor = Colors.black, double size = 24}) =>
      Icon(Icons.highlight_off, size: size, color: iconColor);

  //<===========Account Icons

  static Icon clock({Color iconColor = Colors.black}) =>
      Icon(Icons.timer, color: iconColor);

  static Icon heart({Color iconColor = Colors.black}) => Icon(
        Icons.favorite_outlined,
        color: iconColor,
        size: 20,
      );

  static Icon share2({Color iconColor = Colors.blue}) =>
      Icon(Icons.share, color: iconColor);

  static Icon comment({Color iconColor = Colors.black}) =>
      Icon(Icons.comment, color: iconColor);

  static Icon language({Color iconColor = Colors.black}) =>
      Icon(Icons.language, color: iconColor);

  static Icon google({Color iconColor = Colors.white}) =>
      Icon(Icons.g_mobiledata, color: iconColor);

  static Icon facebook({Color iconColor = Colors.white}) =>
      Icon(Icons.facebook, color: iconColor);

  static Icon bookmarks({Color iconColor = Colors.black}) =>
      Icon(Icons.bookmarks, color: iconColor);

  static Icon copy({Color iconColor = Colors.black}) =>
      Icon(Icons.copy, color: iconColor);

  static Icon edit({Color iconColor = Colors.black, double size = 24}) =>
      Icon(Icons.edit, size: size, color: iconColor);

  static Icon cut({Color iconColor = Colors.black, double size = 18}) =>
      Icon(Icons.cut, size: size, color: iconColor);
}
