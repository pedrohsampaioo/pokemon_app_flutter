import 'package:flutter/material.dart';

import '../components/form_sign_in_and_register_component.dart';
import '../components/top_information_component.dart';
import '../widgets/perform_button_action_widget.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFedf1fe),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TopInformationComponent(titlePage: "Sign Up"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: FormSignInAndRegisterComponent(),
              ),
              _buildContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 32),
          PerformButtonActionWidget(
            text: "Sign up",
            isSubmitting: true,
            action: () {},
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
