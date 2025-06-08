// controller – (TextEditingController) Controls the text being edited. (Required)
// hintText – (String) Placeholder text displayed inside the text field when it is empty. (Required)
// obscureText – (bool) Determines if the text should be obscured (e.g., for passwords). Defaults to false. (Optional)
// validator – (String? Function(String?)?) Validation logic for form input. Returns an error string if validation fails. (Optional)
// keyboardType – (TextInputType) Specifies the type of keyboard to use (e.g., text, email, number). Defaults to TextInputType.text. (Optional)
// prefixIcon – (IconData) Icon displayed at the start of the input field. (Required)
// suffixIcon – (Widget?) An optional widget displayed at the end of the input field (e.g., visibility toggle icon). (Optional)


import 'package:chatting_application/constants/appColorConstant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final IconData prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.validator,
    this.keyboardType = TextInputType.text,
    required this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(color: AppColors.grey500),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary),
        ),
        prefixIcon: Icon(prefixIcon, color: AppColors.grey),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
