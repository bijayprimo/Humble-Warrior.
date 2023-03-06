import 'package:flutter/material.dart';
import 'package:humble_warrior/modals/response/product_details_response.dart';
import 'package:humble_warrior/view/wish_list/wish_list_widgets/wish_list_all_cards.dart';

class WishListCardSelector extends StatelessWidget {
  final int index;
  final ProductDetailsResponse details;
  final BuildContext context;

  const WishListCardSelector(
      {Key? key,
      required this.index,
      required this.details,
      required this.context})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    WishListCards wishListCards =
        WishListCards(details: details, index: index, context: context);

    String type = details.catName ?? "";

    if (type == "Donna Daily Deals") {
      return wishListCards.donnaDeals();
    }
    if (type == "Favourite Things") {
      return wishListCards.donnaFavourite();
    }
    if (type == "Front Page Deals") {
      return wishListCards.frontPage();
    }

    return SizedBox(height: 0,);
  }
}
