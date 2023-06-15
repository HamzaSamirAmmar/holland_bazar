import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/core/util/generate_screen.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, PageName.loginPage);
      },
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 14.sp,
          ),
          children: [
            TextSpan(
              text: "Already have an Account? ",
              style: TextStyle(
                color: Theme.of(context).textTheme.headline2!.color,
              ),
            ),
            TextSpan(
              text: "Login",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
