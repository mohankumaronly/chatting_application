import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String? svgPath; // For SVG icon
  final IconData? iconData; // For regular Flutter icons
  final Color? iconColor;

  const CustomOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.svgPath,
    this.iconData,
    this.iconColor,
  }) : assert(svgPath != null || iconData != null,
              'Either svgPath or iconData must be provided');

  @override
  Widget build(BuildContext context) {
    Widget leadingIcon;

    if (svgPath != null) {
      leadingIcon = SvgPicture.asset(
        svgPath!,
        height: 24,
        width: 24,
        placeholderBuilder: (BuildContext context) =>
            const CircularProgressIndicator(strokeWidth: 2),
      );
    } else {
      leadingIcon = Icon(
        iconData!,
        size: 24,
        color: iconColor ?? Colors.grey[800],
      );
    }

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        side: const BorderSide(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leadingIcon,
          const SizedBox(width: 12),
          Text(
            text,
            style: GoogleFonts.poppins(
              color: Colors.grey[800],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
