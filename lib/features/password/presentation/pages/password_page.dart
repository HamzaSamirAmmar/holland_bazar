import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../injection.dart';
import '../bloc/password.dart';
import '../widgets/password_form.dart';
import '../widgets/password_subtitle.dart';
import '../widgets/password_title.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final _bloc = sl<PasswordBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PasswordBloc, PasswordState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state.success) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            PageName.loginPage,
            (route) => false,
          );
        }
      },
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
                      horizontal: 34.w,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 60.h),
                        const PasswordTitle(),
                        SizedBox(height: 16.h),
                        const PasswordSubtitle(),
                        SizedBox(height: 35.h),
                        PasswordForm(bloc: _bloc),
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
