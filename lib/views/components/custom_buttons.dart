import 'package:flutter/material.dart';
import 'package:tech_interview/theme/custom_colors.dart';
import 'package:tech_interview/theme/custom_typography.dart';

class PrimaryButton extends StatelessWidget {
  final bool? isLoading;
  final String label;
  final VoidCallback onPressed;
  const PrimaryButton(
      {super.key, required this.onPressed, required this.label, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: isLoading!
                ? CustomColors.textPrimaryStrong.withValues(alpha: 0.7)
                : CustomColors.textPrimaryStrong,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        onPressed: isLoading! ? null : onPressed,
        child: isLoading!
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 16,
                      width: 16,
                      child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2)),
                  SizedBox(width: 16),
                  CustomText.bodyMedium('Please wait...', textColor: Colors.white),
                ],
              )
            : CustomText.bodyMedium(label, textColor: Colors.white));
  }
}
