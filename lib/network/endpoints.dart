class Endpoints {
  //Base Urls Endpoints
  static const String baseUrl = "http://112.196.54.37/Development/HW/wp-json";
  static const String generateToken = "/jwt-auth/v1/token/";
  static const String verifyToken = "/jwt-auth/v1/token/validate";
  static const String donnaDeals = "/hwapi/get_donna_daily_deals";
  static const String frontPage = "/hwapi/get_front_page_deals";
  static const String donnaFavourite = "/hwapi/get_favourite_things";
  static String token = "";
}
