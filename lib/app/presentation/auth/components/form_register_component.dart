import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/register_form/register_form_bloc.dart';
import '../widgets/custom_text_field_widget.dart';
import '../widgets/perform_button_action_widget.dart';

class FormRegisterComponent extends StatelessWidget {
  final RegisterFormBloc bloc;

  const FormRegisterComponent({
    @required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterFormBloc, RegisterFormState>(
        bloc: bloc,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Form(
              autovalidate: bloc.state.showErrorMessages,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(height: 16),
                  CustomTextFieldWidget(
                    hintText: "Username",
                    prefixIcon: Icons.supervised_user_circle,
                    onChanged: (value) {
                      bloc.add(
                        RegisterFormEvent.usernameChanged(value),
                      );
                    },
                    validator: (_) => bloc.state.username.value.fold(
                      (f) => f.maybeMap(
                        invalidUsername: (_) => 'Invalid username',
                        orElse: () => null,
                      ),
                      (v) => null,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomTextFieldWidget(
                    hintText: "Email Address",
                    prefixIcon: Icons.email,
                    onChanged: (value) {
                      bloc.add(
                        RegisterFormEvent.emailChanged(value),
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
                        RegisterFormEvent.passwordChanged(value),
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
                  const SizedBox(height: 24),
                  PerformButtonActionWidget(
                    text: "Sign up",
                    isSubmitting: bloc.state.isSubmitting,
                    action: () => bloc.add(
                      RegisterFormEvent.registerWithEmailAndPassword(
                        username: bloc.state.username,
                        emailAddress: bloc.state.emailAddress,
                        password: bloc.state.password,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          );
        });
  }
}
