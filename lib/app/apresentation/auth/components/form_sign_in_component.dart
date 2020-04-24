import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../widgets/custom_text_field_widget.dart';
import '../widgets/perform_button_action_widget.dart';
import '../widgets/social_network_button_widget.dart';
import '../widgets/text_with_action_widget.dart';

class FormSignInComponent extends StatelessWidget {
  final SignInFormBloc bloc;

  const FormSignInComponent({Key key, @required this.bloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      bloc: bloc,
      builder: (context, state) {
        return Form(
          autovalidate: bloc.state.showErrorMessages,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ..._buildTextFieldsAndFormButtons(),
              const SizedBox(height: 16),
              _buildSociaNewtorkButtons(),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSociaNewtorkButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SocialNetworkButton(
          imagePath: "assets/images/google_logo.png",
          action: () => bloc.add(
            SignInFormEvent.signInWithGoogle(),
          ),
        ),
        const SizedBox(width: 16),
        SocialNetworkButton(
          imagePath: "assets/images/facebook_logo.png",
          action: () {},
        ),
      ],
    );
  }

  List<Widget> _buildTextFieldsAndFormButtons() {
    return [
      CustomTextFieldWidget(
        hintText: "Email Address",
        prefixIcon: Icons.email,
        onChanged: (value) {
          bloc.add(
            EmailChanged(value),
          );
        },
        validator: (_) => bloc.state.emailAddress.value.fold(
          (f) => f.maybeMap(
            invalidEmailAddress: (_) => 'Invalid email address',
            orElse: () => null,
          ),
          (v) => null,
        ),
      ),
      const SizedBox(height: 16),
      CustomTextFieldWidget(
        hintText: "Password",
        prefixIcon: Icons.vpn_key,
        obscureText: true,
        onChanged: (value) {
          bloc.add(
            SignInFormEvent.passwordChanged(value),
          );
        },
        validator: (_) => bloc.state.password.value.fold(
          (f) => f.maybeMap(
            shortPassword: (_) => 'Short password',
            orElse: () => null,
          ),
          (v) => null,
        ),
      ),
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
        isSubmitting: bloc.state.isSubmitting,
        text: "Sign In",
        action: () => bloc.add(
          SignInFormEvent.signInWithEmailAndPassword(
            emailAddress: bloc.state.emailAddress,
            password: bloc.state.password,
          ),
        ),
      )
    ];
  }
}
