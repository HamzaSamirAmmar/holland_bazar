import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/features/categories/presentation/pages/categories_page.dart';
import 'package:holland_bazar/features/main/presentation/pages/main_page.dart';
import 'package:holland_bazar/features/onboarding_page/presentation/pages/onboarding_page.dart';
import 'package:holland_bazar/features/otp/presentation/pages/otp_page.dart';
import 'package:holland_bazar/features/password/presentation/pages/password_page.dart';
import 'package:holland_bazar/features/product_details/presentation/pages/product_details_page.dart';
import 'package:holland_bazar/features/sign_up/presentation/pages/sign_up_page.dart';

import '../../features/login/presentation/pages/login_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';
import '../entities/product.dart';

class GeneratePage {
  static Route<dynamic> onGenerate(RouteSettings value) {
    String name = value.name ?? '';

    debugPrint("The name is: $name");
    switch (name) {
      /*** splashPage **/
      case PageName.splashPage:
        {
          return MaterialPageRoute(
            builder: (context) => const SplashPage(),
          );
        }

      /*** onboardingPage **/
      case PageName.onboardingPage:
        {
          return MaterialPageRoute(
            builder: (context) => const OnboardingPage(),
          );
        }

      /*** logInPage **/
      case PageName.loginPage:
        {
          return MaterialPageRoute(
            builder: (context) => const LoginPage(),
          );
        }

      /*** signUpPage **/
      case PageName.signUpPage:
        {
          return MaterialPageRoute(
            builder: (context) => const SignUpPage(),
          );
        }

      /*** passwordPage **/
      case PageName.passwordPage:
        {
          return MaterialPageRoute(
            builder: (context) => const PasswordPage(),
          );
        }

      /*** otpPage **/
      case PageName.otpPage:
        {
          return MaterialPageRoute(
            builder: (context) => const OTPPage(),
          );
        }

      /*** mainPage **/
      case PageName.mainPage:
        {
          return MaterialPageRoute(
            builder: (context) => const MainPage(),
          );
        }

      /*** categoriesPage **/
      case PageName.categoriesPage:
        {
          return MaterialPageRoute(
            builder: (context) => const CategoriesPage(),
          );
        }

      /*** productDetailsPage **/
      case PageName.productDetailsPage:
        {
          return MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
              product: value.arguments as Product,
            ),
          );
        }

      /*** default **/
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Page not found",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w800,
                      fontSize: 33.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 30.h,
                      left: 50.w,
                      right: 50.w,
                    ),
                    child: Text(
                      "We couldn't find the page",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "GO BACK",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class PageName {
  static const String splashPage = "/";
  static const String loginPage = "/login";
  static const String otpPage = "/otp";
  static const String mainPage = "/main";
  static const String signUpPage = "/sign-up";
  static const String onboardingPage = "/onboarding";
  static const String passwordPage = "/password";
  static const String categoriesPage = "/categories";
  static const String productDetailsPage = "/product-details";
}
