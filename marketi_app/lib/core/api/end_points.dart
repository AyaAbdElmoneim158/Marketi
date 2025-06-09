////! baseUrl
class EndPoint {
  /* Products_feature
    
  */
  // static String baseUrl = "https://fakestoreapi.com";
  static String fakeStoreProducts = "/products";

  static String baseUrl = "https://marketi-app.onrender.com/api/v1/";
  //! Auth  ------------------------------------------------------
  static String signIn = "auth/signIn";
  static String signUp = "auth/signUp";
  static String signOut = "auth/oAuth/signOut";
  static String sendPassEmail = "auth/sendPassEmail";
  static String activeResetPass = "auth/activeResetPass";
  static String resetPassword = "auth/resetPassword";
  //! Home  ------------------------------------------------------
  static String products = "home/products";
  static String brands = "home/brands";
  static String categories = "home/categories";
  static String banners = "home/banners";
  static String topSearch = "home/topSearch";

  // static String getUserDataEndPoint(id) {
  //   return "user/get-user/$id";
  // }
}

class ApiKey {
  static String status = "status";
  static String errorMessage = "ErrorMessage";
  static String email = "email";
  static String password = "password";
  // static String token = "token";

  // static String message = "message";
  // static String id = "id";
  // static String name = "name";
  // static String phone = "phone";
  // static String confirmPassword = "confirmPassword";
  // static String location = "location";
  static String authorization = "Authorization";
}

class StorageKeys {
  static String hasCompletedOnboarding = "hasCompletedOnboarding";
  static String token = "token";
}
