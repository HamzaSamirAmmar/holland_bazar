import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Endpoints {
  static const String baseUrl = "https://10.207.252.67:9998/api";

  static const String login = "/account/login";

  static const String getProducts = "/testProducts";

  static String getProductDetails(int id) => "/testProducts/$id";
}

class LocalStorageKeys {
  static const apiToken = 'api_token';
  static const username = 'username';
}

class IconsAssets {
  static const String logo = "assets/icons/logo.svg";
  static const String home = "assets/icons/home.svg";
  static const String offers = "assets/icons/offers.svg";
  static const String favorite = "assets/icons/favorite.svg";
  static const String hollandGo = "assets/icons/holland_go.svg";
  static const String account = "assets/icons/account.svg";
  static const String googlePlusLogo = "assets/icons/google_plus_logo.svg";
}

class ImagesAssets {
  static const String splashDots = "assets/images/splash_dots.png";
  static const String splashTitle = "assets/images/splash_title.png";
  static const String splashFooter = "assets/images/splash_footer.png";
  static const String onboarding1 = "assets/images/onboarding_1.png";
  static const String onboarding2 = "assets/images/onboarding_2.png";
  static const String onboarding3 = "assets/images/onboarding_3.png";
  static const String registrationTypePageBackground =
      "assets/images/registration_type_page_background.png";
}

class RequestBody {
  /// ** Login ** ///
  static Map<String, dynamic> login({
    required String emailOrPhone,
    required String password,
  }) {
    return {
      "EmailOrPhone": emailOrPhone,
      "Password": password,
      "RememberMe": true,
      "Guest": true,
    };
  }

  static Map<String, dynamic> paginationParams({
    required int page,
    int size = 10,
  }) {
    return {
      "Limit": size,
      "Page": page,
    };
  }
}

class GetOptions {
  static Options options = Options();

  static Options getOptionsWithToken({
    String? token,
  }) {
    if (token != null && token.isNotEmpty) {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };
    } else {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
    }
    return options;
  }
}

class ErrorMessage {
  static const String somethingWentWrong = "something_went_wrong";
  static const String error400 = "error400";
  static const String error401 = "error401";
  static const String error403 = "error403";
  static const String error404 = "error404";
  static const String error412 = "error412";
  static const String error500 = "error500";
  static const String error503 = "error503";
}

void message({
  required BuildContext context,
  required String message,
  required bool isError,
  required bloc,
  bool statusChanged = false,
}) {
  // For debug only
  debugPrint('Message is "$message"');
  debugPrint(bloc.state.toString());
  // ************* //

  if (message.isNotEmpty) {
    if (isError) {
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red.withOpacity(1.0),
        textColor: Colors.white,
        fontSize: 16.0.sp,
      );
    }

    /// if isn't error, display message with different background color
    else {
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        textColor: Colors.white,
        fontSize: 16.0.sp,
      );
    }

    /// set message to '' (empty), for avoid print it again when state is changed
    /// or change the value of 'statusChanged' to false
    bloc.clearMessage();
  }
}

String get testText =>
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et';
