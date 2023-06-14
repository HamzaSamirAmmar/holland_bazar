import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: navigate to sign up page
      },
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 14.sp,
          ),
          children: [
            TextSpan(
              text: "Don't have an Account? ",
              style: TextStyle(
                color: Theme.of(context).textTheme.headline2!.color,
              ),
            ),
            TextSpan(
              text: "Sign Up",
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
