import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/features/login/presentation/bloc/login_bloc.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../injection.dart';
import '../bloc/login_state.dart';
import '../widgets/forget_password_text.dart';
import '../widgets/google_login_button.dart';
import '../widgets/login_form.dart';
import '../widgets/login_subtitle.dart';
import '../widgets/login_title.dart';
import '../widgets/sign_up_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _bloc = sl<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      bloc: _bloc,
      builder: (context, state) {
        message(
          context: context,
          message: state.message,
          isError: state.error,
          bloc: _bloc,
        );
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 35.w,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 60.h),
                        const LoginTitle(),
                        SizedBox(height: 12.h),
                        const LoginSubtitle(),
                        SizedBox(height: 36.h),
                        LoginForm(bloc: _bloc),
                        SizedBox(height: 24.h),
                        const ForgetPasswordText(),
                        SizedBox(height: 143.h),
                        const GoogleLoginButton(),
                        SizedBox(height: 104.h),
                        const SignUpText(),
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
