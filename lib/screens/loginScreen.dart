
import 'package:chatting_application/constants/appColorConstant.dart';
import 'package:chatting_application/constants/appStringConstant.dart';
<<<<<<< HEAD:lib/screens/login_screen.dart
import 'package:chatting_application/widgets/coustomButton.dart';
import 'package:chatting_application/widgets/coustomDivider.dart';
import 'package:chatting_application/widgets/coustomOutlinedButton.dart';
import 'package:chatting_application/widgets/coustomText.dart';
import 'package:chatting_application/widgets/coustomTextField.dart';
=======
import 'package:chatting_application/widgets/customButton.dart';
import 'package:chatting_application/widgets/customDivider.dart';
import 'package:chatting_application/widgets/customOutlinedButton.dart';
import 'package:chatting_application/widgets/customText.dart';
import 'package:chatting_application/widgets/customTextField.dart';
>>>>>>> Rockranger:lib/screens/loginScreen.dart
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildWelcomeTitle(),
                    SizedBox(height: 8),
                    _buildSubtitle(),
                    SizedBox(height: 60),
                    _buildEmailText(),
                    SizedBox(height: 8),
                    _buildEmailTextField(),
                    SizedBox(height: 20),
                    _buildPasswordText(),
                    SizedBox(height: 8),
                    _buildPasswordTextFiled(),
                    SizedBox(height: 8),
                    _buildForgotPasswordText(),
                    SizedBox(height: 20),
                    _buildLoginButton(),
                    SizedBox(height: 30),
                    OrDivider(),
                    SizedBox(height: 30),
                    _buildGoogleButton(),
                    SizedBox(height: 15),
                    _buildPhoneButton(),
                    SizedBox(height: 30),
                    _buildSignInTextButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildSignInTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyTextLabel(
          text: "Don't have an account? ",
          fontSize: 14,
          color: AppColors.grey800,
          fontWeight: FontWeight.w500,
        ),
        GestureDetector(
          onTap: () {},
          child: MyTextLabel(
            text: "Sign In",
            fontSize: 16,
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Align _buildForgotPasswordText() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: MyTextLabel(
          text: AppStrings.forgotPassword,
          fontSize: 14,
          color: AppColors.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  CustomButton _buildLoginButton() {
    return CustomButton(label: AppStrings.loginTextButton, onPressed: () {});
  }

CustomOutlinedButton _buildPhoneButton() {
  return CustomOutlinedButton(
    text: 'Continue with Phone Number',
    iconData: Icons.phone,
    onPressed: () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Feature Not Available"),
          content: const Text(
            "This method is not available yet. The application is still under development.\n\n"
            "For contact: mohankumaronly81@gmail.com",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    },
  );
}


  CustomOutlinedButton _buildGoogleButton() {
    return CustomOutlinedButton(
      text: 'Continue with Google',
      svgPath: 'assets/icons/google.svg',
      onPressed: () {},
    );
  }

  MyTextLabel _buildPasswordText() => MyTextLabel(
    text: AppStrings.titlePasswordText,
    fontSize: 14,
    color: AppColors.grey800,
    fontWeight: FontWeight.w500,
  );

  CustomTextField _buildPasswordTextFiled() {
    return CustomTextField(
      controller: passwordTextEditingController,
      hintText: AppStrings.passwordText,
      prefixIcon: Icons.lock_outline,
      obscureText: _obscurePassword,
      suffixIcon: IconButton(
        icon: Icon(
          _obscurePassword
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            _obscurePassword = !_obscurePassword;
          });
        },
      ),
    );
  }

  CustomTextField _buildEmailTextField() {
    return CustomTextField(
      controller: emailTextEditingController,
      hintText: AppStrings.emailText,
      prefixIcon: Icons.email_outlined,
    );
  }

  /// Builds the welcome title text widget
  Widget _buildWelcomeTitle() => MyTextLabel(
    text: AppStrings.welcomeText,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
    textAlign: TextAlign.center,
  );

  // Build The 
  Widget _buildSubtitle() => MyTextLabel(
    text: AppStrings.loginIntoYourAccount,
    fontSize: 16,
    color: AppColors.grey500,
    textAlign: TextAlign.center,
  );

  // Build Email Text Above The Text Filed
  Widget _buildEmailText() => MyTextLabel(
    text: AppStrings.titleEmailText,
    fontSize: 14,
    color: AppColors.grey800,
    fontWeight: FontWeight.w500,
  );
}
