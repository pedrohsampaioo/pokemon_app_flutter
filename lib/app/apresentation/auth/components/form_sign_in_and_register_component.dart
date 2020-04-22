import 'package:flutter/material.dart';

import '../widgets/custom_text_field_widget.dart';

class FormSignInAndRegisterComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          CustomTextFieldWidget(
            hintText: "Email Address",
            prefixIcon: Icons.email,
          ),
          const SizedBox(height: 16),
          CustomTextFieldWidget(
            hintText: "Password",
            prefixIcon: Icons.vpn_key,
            obscureText: true,
          )
        ],
      ),
    );
  }
}
