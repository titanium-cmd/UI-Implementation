import 'package:flutter/material.dart';
import 'package:tech_interview/theme/custom_colors.dart';

class CustomTypography {
  static final _baseTextStyle = TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      color: CustomColors.textNeutralStrong);

  static final _semiBoldStyle = _baseTextStyle.copyWith(fontWeight: FontWeight.w600);

  static final _mediumStyle = _baseTextStyle.copyWith(fontWeight: FontWeight.w500);

  static final h3Medium = _mediumStyle.copyWith(fontSize: 32);
  static final h4SemiBold = _semiBoldStyle.copyWith(fontSize: 24);
  static final h5SemiBold = _semiBoldStyle.copyWith(fontSize: 20);
  static final h5Medium = _mediumStyle.copyWith(fontSize: 20);
  static final bodySmallMedium = _mediumStyle.copyWith(fontSize: 14);
  static final bodyMedium = _mediumStyle.copyWith(fontSize: 16);
  static final bodySmallRegular = _baseTextStyle.copyWith(fontSize: 14);
  static final bodyXSmallRegular = _baseTextStyle.copyWith(fontSize: 12);
  static final subTextSmallRegular = _baseTextStyle.copyWith(fontSize: 10);
}

class CustomText {
  //h3 Headings...
  static Text h3Medium(String data, {Color? textColor, TextAlign? textAlign}) =>
      Text(data, textAlign: textAlign, style: CustomTypography.h3Medium.copyWith(color: textColor));

  //h4 Headings...
  static Text h4SemiBold(String data, {Color? textColor, TextAlign? textAlign}) => Text(data,
      textAlign: textAlign, style: CustomTypography.h4SemiBold.copyWith(color: textColor));

  //h5 Headings...
  static Text h5SemiBold(String data, {Color? textColor, TextAlign? textAlign}) => Text(data,
      textAlign: textAlign, style: CustomTypography.h5SemiBold.copyWith(color: textColor));
  static Text h5Medium(String data, {Color? textColor, TextAlign? textAlign}) =>
      Text(data, textAlign: textAlign, style: CustomTypography.h5Medium.copyWith(color: textColor));

  //Body Headings...
  static Text bodyMedium(String data, {Color? textColor, TextAlign? textAlign}) => Text(data,
      textAlign: textAlign, style: CustomTypography.bodyMedium.copyWith(color: textColor));
  static Text bodySmallMedium(String data, {Color? textColor, TextAlign? textAlign}) => Text(data,
      textAlign: textAlign, style: CustomTypography.bodySmallMedium.copyWith(color: textColor));
  static Text bodySmallRegular(String data, {Color? textColor, TextAlign? textAlign}) => Text(data,
      textAlign: textAlign, style: CustomTypography.bodySmallRegular.copyWith(color: textColor));
  static Text bodyXSmallRegular(String data, {Color? textColor, TextAlign? textAlign}) => Text(data,
      textAlign: textAlign, style: CustomTypography.bodyXSmallRegular.copyWith(color: textColor));

//SubText
  static Text subTextSmallRegular(String data, {Color? textColor, TextAlign? textAlign}) =>
      Text(data,
          textAlign: textAlign,
          style: CustomTypography.subTextSmallRegular.copyWith(color: textColor));
}
