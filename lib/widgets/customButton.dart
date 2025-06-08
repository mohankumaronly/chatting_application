// label – (String) The text to display on the button. (Required)
// onPressed – (VoidCallback) The function to execute when the button is tapped. (Required)
// backgroundColor – (Color) The background color of the button. (Optional, defaults to AppColors.primary)
// fontSize – (double) The size of the button text. (Optional, default is 16)
// verticalPadding – (double) The vertical padding inside the button. (Optional, default is 16)
// borderRadius – (double) The roundness of the button corners. (Optional, default is 12)



import 'package:chatting_application/constants/appColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double fontSize;
  final double verticalPadding;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = AppColors.primary,
    this.fontSize = 16,
    this.verticalPadding = 16,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: verticalPadding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: 2,
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
          color: AppColors.backgroundColor,
        ),
      ),
    );
  }
}
