import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holland_bazar/core/widgets/loader.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';
import '../../../../injection.dart';
import '../bloc/sign_up.dart';
import '../widgets/login_text.dart';
import '../widgets/sign_up_form.dart';
import '../widgets/sign_up_subtitle.dart';
import '../widgets/sign_up_title.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _bloc = sl<SignUpBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state.pushOTPPage) {
          Navigator.pushNamed(context, PageName.otpPage);
          _bloc.addResetPushOTPValueEvent();
        }
      },
      builder: (context, state) {
        message(
          bloc: _bloc,
          context: context,
          isError: state.error,
          message: state.message,
        );
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 34.w,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 60.h),
                        const SignUpTitle(),
                        SizedBox(height: 12.h),
                        const SignUpSubtitle(),
                        SizedBox(height: 112.h),
                        SignUpForm(
                          bloc: _bloc,
                        ),
                        SizedBox(height: 24.h),
                        const LoginText(),
                        SizedBox(height: 42.h),
                      ],
                    ),
                  ),
                ),
                if (state.isLoading) const Loader(),
              ],
            ),
          ),
        );
      },
    );
  }
}
