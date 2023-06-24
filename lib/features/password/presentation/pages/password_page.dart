import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:holland_bazar/core/widgets/buttons/custom_text_button.dart';
import 'package:holland_bazar/features/password/presentation/widgets/password_form.dart';

import '../../../../core/widgets/Inputs/password_text_form_field.dart';
import '../../../../injection.dart';
import '../bloc/password.dart';
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
        // TODO: implement listener
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            body: SingleChildScrollView(
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
                    const PasswordForm(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
