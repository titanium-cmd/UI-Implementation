import 'package:flutter/material.dart';
import 'package:tech_interview/theme/custom_colors.dart';
import 'package:tech_interview/theme/custom_typography.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;
  final String? hint;
  final bool? isRequired;
  const CustomInputField({
    super.key,
    required this.label,
    this.hint,
    required this.validator,
    required this.controller,
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomText.bodySmallMedium(label),
            SizedBox(width: 4),
            if (isRequired!) ...{CustomText.h5SemiBold('*', textColor: Colors.red)}
          ],
        ),
        SizedBox(height: 8),
        TextFormField(
          validator: validator,
          style: CustomTypography.bodyXSmallRegular,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              fillColor: CustomColors.borderNeutralWeakest,
              filled: true,
              hintStyle: CustomTypography.bodyXSmallRegular,
              focusedErrorBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: CustomColors.textDangerDefault)),
              errorBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: CustomColors.textDangerDefault)),
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: CustomColors.iconNeutralWeaker)),
              enabledBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: CustomColors.iconNeutralWeaker)),
              hintText: hint),
          controller: controller,
        )
      ],
    );
  }
}
