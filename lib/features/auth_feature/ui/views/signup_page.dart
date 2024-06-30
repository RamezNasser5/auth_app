import 'package:auth_app/core/app_router.dart';
import 'package:auth_app/core/consts.dart';
import 'package:auth_app/features/auth_feature/logic/auth_bloc/auth_bloc.dart';
import 'package:auth_app/features/auth_feature/ui/widgets/custom_login_button.dart';
import 'package:auth_app/features/auth_feature/ui/widgets/custom_login_text.dart';
import 'package:auth_app/features/auth_feature/ui/widgets/custom_starter_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  String? email;
  String? password;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          isLoading = true;
        } else if (state is RegisterSuccess) {
          isLoading = false;
          GoRouter.of(context).go(AppRouter.homeRoute);
        } else if (state is RegisterFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
          isLoading = false;
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.85,
                ),
                child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).go(AppRouter.initialRoute);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              const CustomLoginText(
                text1: 'Let\'s Sign You up',
                text2:
                    'Enter your information  below or continue with  your social accounts.',
              ),
              const SizedBox(
                height: 60,
              ),
              CustomStarterTextField(
                onFieldSubmitted: (value) {
                  email = value;
                },
                hintText: 'Email Address',
              ),
              const SizedBox(
                height: 40,
              ),
              CustomStarterTextField(
                onFieldSubmitted: (value) {
                  password = value;
                },
                hintText: 'Password',
              ),
              const SizedBox(
                height: 140,
              ),
              CustomLoginButton(
                onTap: () {
                  GoRouter.of(context).go(AppRouter.initialRoute);
                },
                textFieldText: 'Sign Up',
                text: 'Sign In here.',
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context)
                      .add(RegisterEvent(email: email!, password: password!));
                },
                isLoading: isLoading,
              ),
            ],
          ),
        );
      },
    );
  }
}
