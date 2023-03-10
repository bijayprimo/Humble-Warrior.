import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:humble_warrior/modals/response/product_details_response.dart';
import 'package:humble_warrior/network/endpoints.dart';
import 'package:humble_warrior/services/hive_storage_service.dart';
import 'package:humble_warrior/utils/helpers/dialog_helper.dart';
import '../../../modals/requests/pagination_modal.dart';
import '../../../network/api_call.dart';

class HomeOptionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final TextEditingController searchTextController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  RxInt selectedIndex = 0.obs;
  RxBool select = false.obs;
  int initialIndex = Get.arguments[0];
  late BuildContext context;
  HiveService service = Get.find<HiveService>();

  ///Storage has item
  bool hasItemInDatabase(String id) {
    return service.hasItem(
      id,
    );
  }

  /// Donna's Deals
  final RxInt donnaDealsLength = 0.obs;
  final RxBool donnaDealsBool = true.obs;
  List<ProductDetailsResponse> donnaDealList = [];
  RxInt donnaDealListLength = 0.obs;
  int donnaDealsPage = 1;
  RxInt donnaDealsTotalDeals = 20.obs;
  final ScrollController donnaDealScrollController =
      ScrollController(initialScrollOffset: 0.0);

  /// Front Page Deals
  final RxInt frontPageDealsLength = 0.obs;
  final RxBool frontPageDealsBool = true.obs;
  RxInt frontPageDealsTotalDeals = 20.obs;
  List<ProductDetailsResponse> frontPageDealList = [];
  RxInt frontPageDealListLength = 0.obs;
  int frontPageDealsPage = 1;
  final ScrollController frontPageDealScrollController =
      ScrollController(initialScrollOffset: 0.0);

  /// Donna's Favourite
  final RxInt donnaFavouriteDealsLength = 0.obs;
  final RxBool donnaFavouriteDealsBool = true.obs;
  List<ProductDetailsResponse> donnaFavouriteDealList = [];
  RxInt donnaFavouriteDealsTotalDeals = 20.obs;
  int donnaFavouriteDealsPage = 1;
  RxInt donnaFavouriteDealListLength = 0.obs;
  final ScrollController donnaFavouriteDealScrollController =
      ScrollController(initialScrollOffset: 0.0);

  @override
  void onInit() {
    debugPrint("$initialIndex");
    tabController =
        TabController(length: 3, initialIndex: initialIndex, vsync: this);
    tabController.addListener(() {
      selectedIndex.value = tabController.index;
    });
    Future.wait(
        [donaDealsAPI(), donnaFavouriteDealsAPI(), frontPageDealsAPI()]);
    super.onInit();
  }

  Future donaDealsAPI({bool? refresh = false}) async {
    if (refresh!) {
      donnaDealsPage = 1;
      // donnaDealsBool.value = true;
      donnaDealList.clear();
      // update();
    }
    PaginationModel paginationModel =
        PaginationModel(page: donnaDealsPage.toString());
    await CallAPI.productListAPI(
            payload: paginationModel, url: Endpoints.donnaDeals)
        .then((value) {
      if (value.data == null) {
        DialogHelper.showToast(context, "No Deals Found");
      } else {
        donnaDealsPage += 1;
        donnaDealList.addAll(value.data!);
        donnaDealListLength.value = donnaDealList.length;
        if (refresh) {
          DialogHelper.showToast(context, "Deals Refreshed");
        }
      }
      if (value.totalRecords != null) {
        donnaDealsTotalDeals.value = int.parse(value.totalRecords!);
      }
      donnaDealsBool.value = false;
      update();
    });
  }

  Future frontPageDealsAPI({bool? refresh = false}) async {
    if (refresh!) {
      frontPageDealsPage = 1;
      frontPageDealList.clear();
    }
    PaginationModel paginationModel =
        PaginationModel(page: frontPageDealsPage.toString());
    await CallAPI.productListAPI(
            payload: paginationModel, url: Endpoints.frontPage)
        .then((value) {
      if (value.data == null) {
        DialogHelper.showToast(context, "No Deals Found");
      } else {
        frontPageDealsPage += 1;
        frontPageDealList.addAll(value.data!);
        frontPageDealListLength.value = frontPageDealList.length;
        if (refresh) {
          DialogHelper.showToast(context, "Deals Refreshed");
        }
      }

      if (value.totalRecords != null) {
        frontPageDealsTotalDeals.value = int.parse(value.totalRecords!);
      }
      frontPageDealsBool.value = false;
      update();
    });
  }

  Future donnaFavouriteDealsAPI({bool? refresh = false}) async {
    if (refresh!) {
      donnaFavouriteDealsPage = 1;
      // donnaFavouriteDealsBool.value = true;
      donnaFavouriteDealList.clear();
      // update();
    }
    PaginationModel paginationModel =
        PaginationModel(page: donnaFavouriteDealsPage.toString());
    await CallAPI.productListAPI(
            payload: paginationModel, url: Endpoints.donnaFavourite)
        .then((value) {
      if (value.data == null) {
        DialogHelper.showToast(context, "No Deals Found");
      } else {
        donnaFavouriteDealsPage += 1;
        donnaFavouriteDealList.addAll(value.data!);
        donnaFavouriteDealListLength.value = donnaFavouriteDealList.length;
        if (refresh) {
          DialogHelper.showToast(context, "Deals Refreshed");
        }
      }
      if (value.totalRecords != null) {
        donnaFavouriteDealsTotalDeals.value = int.parse(value.totalRecords!);
      }

      donnaFavouriteDealsBool.value = false;
      update();
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    donnaDealScrollController.dispose();
    donnaFavouriteDealScrollController.dispose();
    frontPageDealScrollController.dispose();
    super.onClose();
  }
}
