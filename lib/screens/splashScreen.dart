import 'package:chatting_application/constants/appColorConstant.dart';
import 'package:chatting_application/constants/appStringConstant.dart';
import 'package:chatting_application/screens/loginScreen.dart';
import 'package:chatting_application/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Lottie.asset(
                'assets/animations/splashAnimation.json',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child:  _buildMadeByRockRangerText()
          ),
        ],
      ),
    );
  }

  MyTextLabel _buildMadeByRockRangerText() {
    return MyTextLabel(
            text: AppStrings.madeByRockRanger,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.grey800,
          );
  }
}
