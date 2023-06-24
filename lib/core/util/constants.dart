import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../usecases/usecase.dart';

class Endpoints {
  static const String baseUrl = "http://192.168.1.110:8000/api";

  static const String login = "/auth/login";

  static const String signUp = "";

  static const String sendCode = "";

  static const String resetPassword = "";

  static const String getCart = "/shoppingCart/addItem";

  static const String addToCart = "/shoppingCart/addItem";

  static const String categories = "/categories";

  static const String frequentlyOrdered =
      "/products"; //"/products/frequentlyItems"; //FIXME: because the list is empty

  static const String addToFavorite = "/products/userFavorites/create";

  static const String removeFromFavorite = "/products/userFavorites/delete";

  static String getProductDetails(int id) => "/products/$id";

  static String deleteFromCart(int id) => "/shoppingCart/deleteItem/$id";
}

class LocalStorageKeys {
  static const apiToken = 'api_token';
  static const username = 'username';
  static const onBoardingStatus = 'on_boarding_status';
}

class IconsAssets {
  static const String add = "assets/icons/add.svg";
  static const String star = "assets/icons/star.svg";
  static const String starHalf = "assets/icons/star_half.svg";
  static const String starFill = "assets/icons/star_fill.svg";
  static const String logo = "assets/icons/logo.svg";
  static const String home = "assets/icons/home.svg";
  static const String cart = "assets/icons/cart.svg";
  static const String ticket = "assets/icons/ticket.svg";
  static const String search = "assets/icons/search.svg";
  static const String offers = "assets/icons/offers.svg";
  static const String filter = "assets/icons/filter.svg";
  static const String account = "assets/icons/account.svg";
  static const String favorite = "assets/icons/favorite.svg";
  static const String hollandGo = "assets/icons/holland_go.svg";
  static const String obscureStar = "assets/icons/obscure_star.svg";
  static const String googlePlusLogo = "assets/icons/google_plus_logo.svg";
}

class ImagesAssets {
  static const String splashDots = "assets/images/splash_dots.png";
  static const String splashTitle = "assets/images/splash_title.png";
  static const String splashFooter = "assets/images/splash_footer.png";
  static const String onboarding1 = "assets/images/onboarding_1.png";
  static const String onboarding2 = "assets/images/onboarding_2.png";
  static const String onboarding3 = "assets/images/onboarding_3.png";
  static const String homeHeader = "assets/images/home_header.png";
  static const String registrationTypePageBackground =
      "assets/images/registration_type_page_background.png";
  static const String pastOrder = "assets/images/past_order.png";
  static const String freeDelivery = "assets/images/free_delivery.png";

  /// Dummy Data **/
  static const String offer1 = "assets/images/offer_1.png";
  static const String offer2 = "assets/images/offer_2.png";
  static const String offer3 = "assets/images/offer_3.png";

  static const String product_1 = "assets/images/product_1.png";
}

class QueryParams {
  static Map<String, dynamic> paginationParams({
    required PaginationParams params,
  }) {
    return {
      "page": params.page,
      "per_page": params.perPage,
      "search_word": params.searchWord,
    };
  }
}

class RequestBody {
  /// ** Login ** ///
  static FormData login({
    required String number,
    required String password,
  }) {
    return FormData.fromMap({
      "phone": number,
      "password": password,
    });
  }

  /// ** AddToCart ** ///
  static FormData addToCart({
    required int productId,
    required int quantity,
  }) {
    return FormData.fromMap({
      "product_id": productId,
      "quantity": quantity,
    });
  }

  /// ** ChangeFavoriteStatus ** ///
  static FormData changeFavoriteStatus({
    required int productId,
  }) {
    return FormData.fromMap({
      "product_id": productId,
    });
  }

  /// ** SignUp ** ///
  static Map<String, dynamic> signUp({
    required String number,
    required String name,
    required String address,
  }) {
    return {
      "number": number,
      "name": name,
      "address": address,
    };
  }

  /// ** SendCode ** ///
  static Map<String, dynamic> sendCode({
    required String number,
  }) {
    return {
      "number": number,
    };
  }

  /// ** ResetPassword ** ///
  static Map<String, dynamic> resetPassword({
    required String password,
  }) {
    return {
      "password": password,
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
  static const String somethingWentWrong = "Something went wrong";
  static String error400 = "The request that was sent is invalid";
  static String error401 = "Failed to authenticate with the server";
  static String error403 =
      "You do not have permission to access the requested resource";
  static String error404 = "The requested url was not found on the server";
  static String error422 = "The entered data is incorrect";
  static String error500 = "A generic error occurred on the server";
  static String error503 = "The requested service is not available";
}

void message({
  required BuildContext context,
  required String message,
  required bool isError,
  required bloc,
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
