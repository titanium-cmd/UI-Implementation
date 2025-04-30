import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_interview/controller/user_controller.dart';
import 'package:tech_interview/theme/custom_colors.dart';
import 'package:tech_interview/theme/custom_typography.dart';
import 'package:tech_interview/views/components/custom_buttons.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final _userController = UserController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.textNeutralDefault,
      bottomNavigationBar: BottomAppBar(
        height: 74,
        color: Colors.white,
        child: PrimaryButton(
            onPressed: () async {
              final isValid = _formKey.currentState?.validate() ?? false;
              if (isValid) {
                final (_, msg) = await _userController.updateuserProfile(
                    _firstName.text, _lastName.text, _address.text);
                ScaffoldMessenger.maybeOf(context)
                    ?.showSnackBar(SnackBar(content: CustomText.bodySmallRegular(msg)));
              }
            },
            label: 'Save changes'),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: SvgPicture.asset('assets/arrow-back.svg'),
          ),
        ),
        title: CustomText.h5Medium('Update profile', textColor: CustomColors.textNeutralStronger),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        children: [
          Form(
            key: _formKey,
            child: Card(
              elevation: 0,
              color: CustomColors.fillPrimaryWhite,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomInputField(
                            label: 'First Name',
                            hint: 'Kwaku',
                            controller: _firstName,
                            validator: (val) {
                              if ((val ?? '').isEmpty) {
                                return 'First name is required';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: CustomInputField(
                            label: 'Last Name',
                            hint: 'Asante',
                            controller: _lastName,
                            validator: (val) {
                              if ((val ?? '').isEmpty) {
                                return 'Last name is required';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    CustomInputField(
                      label: 'Address',
                      hint: 'Some random screen address',
                      controller: _address,
                      validator: (val) {
                        if ((val ?? '').isEmpty) {
                          return 'Address is required';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
