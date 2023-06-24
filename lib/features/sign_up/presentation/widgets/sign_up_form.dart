import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/Inputs/custom_text_form_field.dart';
import '../../../../core/widgets/Inputs/number_text_form_field.dart';
import '../../../../core/widgets/buttons/custom_text_button.dart';
import '../bloc/sign_up.dart';

class SignUpForm extends StatefulWidget {
  final SignUpBloc bloc;

  const SignUpForm({
    super.key,
    required this.bloc,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _numberController = TextEditingController();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: "Name",
            controller: _nameController,
            validator: (name) {
              if (name == null || name.isEmpty) {
                return 'Name is required';
              }
              return null;
            },
          ),
          SizedBox(height: 28.h),
          NumberTextFormField(
            numberController: _numberController,
          ),
          SizedBox(height: 28.h),
          CustomTextFormField(
            label: "Address",
            lastField: true,
            controller: _addressController,
            validator: (address) {
              if (address == null || address.isEmpty) {
                return 'Address is required';
              }
              return null;
            },
          ),
          SizedBox(height: 196.h),
          CustomTextButton(
            title: "Sign Up",
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                widget.bloc.addSendSignUpDateEvent(
                  number: _numberController.text,
                  name: _nameController.text,
                  address: _addressController.text,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
