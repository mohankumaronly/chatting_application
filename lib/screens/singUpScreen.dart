import 'package:chatting_application/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:chatting_application/constants/appColorConstant.dart';
import 'package:chatting_application/constants/appStringConstant.dart';
import 'package:chatting_application/widgets/customButton.dart';
import 'package:chatting_application/widgets/customDivider.dart';
import 'package:chatting_application/widgets/customOutlinedButton.dart';
import 'package:chatting_application/widgets/customText.dart';
import 'package:chatting_application/widgets/customTextField.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SinginscreenState();
}

class _SinginscreenState extends State<SingUpScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController1 =
      TextEditingController();
  TextEditingController passwordTextEditingController2 =
      TextEditingController();
  TextEditingController userNameTextEditingController = TextEditingController();
  bool _obscurePassword1 = true;
  bool _obscurePassword2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildWelcomeTitle(),
                      SizedBox(height: 8),
                      _buildSubtitle(),
                      SizedBox(height: 30),
                      _buildUserNameTextLabel(),
                      SizedBox(height: 8),
                      _buildUserNameTextField(),
                      SizedBox(height: 20),
                      _buildEmailText(),
                      SizedBox(height: 8),
                      _buildEmailTextField(),
                      SizedBox(height: 20),
                      _buildPasswordText(),
                      SizedBox(height: 8),
                      _buildPasswordTextFiled1(),
                      SizedBox(height: 20),
                      _buildPasswordText(),
                      SizedBox(height: 8),
                      _buildPasswordTextFiled2(),
                      SizedBox(height: 30),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  MyTextLabel _buildUserNameTextLabel() {
    return MyTextLabel(
      text: 'Full Name',
      fontSize: 14,
      color: AppColors.grey800,
      fontWeight: FontWeight.w500,
    );
  }

  CustomTextField _buildUserNameTextField() {
    return CustomTextField(
      controller: userNameTextEditingController,
      hintText: 'Enter your full name',
      prefixIcon: Icons.person_2_outlined,
    );
  }

  Row _buildSignInTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyTextLabel(
          text: 'Already have an account? ',
          fontSize: 14,
          color: AppColors.grey800,
          fontWeight: FontWeight.w500,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: MyTextLabel(
            text: 'Login',
            fontSize: 16,
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  CustomButton _buildLoginButton() {
    return CustomButton(label: 'Sign Up', onPressed: () {});
  }

  CustomOutlinedButton _buildPhoneButton() {
    return CustomOutlinedButton(
      text: AppStrings.continueWithPhoneNumber,
      iconData: Icons.phone,
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(AppStrings.featureIsNotAvailable),
            content: const Text(AppStrings.messageForNotAvailable),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(AppStrings.okString),
              ),
            ],
          ),
        );
      },
    );
  }

  CustomOutlinedButton _buildGoogleButton() {
    return CustomOutlinedButton(
      text: AppStrings.continueWithGoogle,
      svgPath: AppStrings.googleSvgPath,
      onPressed: () {},
    );
  }

  MyTextLabel _buildPasswordText() => MyTextLabel(
    text: AppStrings.titlePasswordText,
    fontSize: 14,
    color: AppColors.grey800,
    fontWeight: FontWeight.w500,
  );

  CustomTextField _buildPasswordTextFiled1() {
    return CustomTextField(
      controller: passwordTextEditingController1,
      hintText: 'Enter your password (min 6 chars)',
      prefixIcon: Icons.lock_outline,
      obscureText: _obscurePassword1,
      suffixIcon: IconButton(
        icon: Icon(
          _obscurePassword1
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            _obscurePassword1 = !_obscurePassword1;
          });
        },
      ),
    );
  }

  CustomTextField _buildPasswordTextFiled2() {
    return CustomTextField(
      controller: passwordTextEditingController2,
      hintText: 'Enter your password (min 6 chars)',
      prefixIcon: Icons.lock_outline,
      obscureText: _obscurePassword2,
      suffixIcon: IconButton(
        icon: Icon(
          _obscurePassword2
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            _obscurePassword2 = !_obscurePassword2;
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

  Widget _buildWelcomeTitle() => MyTextLabel(
    text: 'Create Account',
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
    textAlign: TextAlign.center,
  );

  Widget _buildSubtitle() => MyTextLabel(
    text: 'Join us to get started',
    fontSize: 16,
    color: AppColors.grey500,
    textAlign: TextAlign.center,
  );

  Widget _buildEmailText() => MyTextLabel(
    text: AppStrings.titleEmailText,
    fontSize: 14,
    color: AppColors.grey800,
    fontWeight: FontWeight.w500,
  );
}
