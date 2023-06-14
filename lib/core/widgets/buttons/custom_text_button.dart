import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  final String? title;
  final Widget? child;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  const CustomTextButton({
    super.key,
    this.title,
    this.child,
    this.backgroundColor,
    required this.onPressed,
  }) : assert(title != null || child != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: 307.w,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor:
              backgroundColor ?? Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: child ??
            Text(
              title!,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
                // fontWeight: FontWeight.w300
              ),
            ),
      ),
    );
  }
}
