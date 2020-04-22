import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../components/form_sign_in_and_register_component.dart';
import '../components/top_information_component.dart';
import '../widgets/perform_button_action_widget.dart';
import '../widgets/social_network_button_widget.dart';
import '../widgets/text_with_action_widget.dart';
class SignInPage extends StatelessWidget {
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
              TopInformationComponent(titlePage: "Sign In"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: FormSignInAndRegisterComponent(),
              ),
              _buildContent(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.topRight,
            child: TextWithActionWidget(
              color: Color(0xFFd684a6),
              action: () {},
              text: "Forgot Password?",
            ),
          ),
          const SizedBox(height: 32),
          PerformButtonActionWidget(
            isSubmitting: true,
            text: "Sign In",
            action: () {},
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SocialNetworkButton(
                imagePath: "assets/images/google_logo.png",
                action: () {},
              ),
              const SizedBox(width: 16),
              SocialNetworkButton(
                imagePath: "assets/images/facebook_logo.png",
                action: () {},
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 4),
              TextWithActionWidget(
                text: "SIGN UP",
                color: Colors.black,
                action: () => Modular.to.pushNamed("sign_up"),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ],
      ),
    );
  }
}
