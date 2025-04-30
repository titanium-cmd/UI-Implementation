import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_interview/theme/custom_colors.dart';
import 'package:tech_interview/views/screens/index_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IndexScreen(),
    );
  }
}

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
          Expanded(
              child: Text(
            title,
            style: TextStyle(color: titleTextColor ?? CustomColors.neutralStrong),
          )),
          trailing ?? SvgPicture.asset('assets/arrow-right.svg'),
        ],
      ),
    );
  }
}
