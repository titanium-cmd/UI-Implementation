import 'package:flutter/material.dart';
import 'package:tech_interview/theme/custom_colors.dart';
import 'package:tech_interview/theme/custom_typography.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const PrimaryButton({super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: CustomColors.textPrimaryStrong,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        onPressed: onPressed,
        child: CustomText.bodyMedium(label, textColor: Colors.white));
  }
}
