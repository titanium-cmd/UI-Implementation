import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_interview/resources/svgs.dart';
import 'package:tech_interview/theme/custom_typography.dart';

class SectionListTile extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final Color? titleTextColor;
  final String svgPath;
  const SectionListTile({
    super.key,
    this.titleTextColor,
    this.trailing,
    required this.svgPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: [
          SvgPicture.asset(svgPath),
          SizedBox(width: 12),
          Expanded(child: CustomText.bodySmallRegular(title, textColor: titleTextColor)),
          trailing ?? SvgPicture.asset(Svgs.arrowBack),
        ],
      ),
    );
  }
}
