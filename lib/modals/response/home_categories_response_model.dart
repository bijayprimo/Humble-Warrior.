class HomeCategoryResponseModel {
  bool? status;
  List<HomeCategoryList>? data;
  String? message;

  HomeCategoryResponseModel({this.status, this.data, this.message});

  HomeCategoryResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <HomeCategoryList>[];
      json['data'].forEach((v) {
        data!.add(new HomeCategoryList.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class HomeCategoryList {
  String? categoryName;
  String? categoryImage;
  int? id;

  HomeCategoryList({this.categoryName, this.categoryImage, this.id});

  HomeCategoryList.fromJson(Map<String, dynamic> json) {
    categoryName = json['category_name'];
    categoryImage = json['category_image'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_name'] = this.categoryName;
    data['category_image'] = this.categoryImage;
    data['id'] = this.id;
    return data;
  }
}
