import 'package:flutter/material.dart';
import 'package:tech_interview/theme/custom_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const PrimaryButton({super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: CustomColors.primaryStrong,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        onPressed: onPressed,
        child: Text(label, style: TextStyle(color: Colors.white, fontSize: 16)));
  }
}
