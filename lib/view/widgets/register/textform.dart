import 'package:flutter/material.dart';

import '../../../../core/appcolors.dart';

class TextForm extends StatelessWidget {
  final Widget label;
  final String hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  bool? isPassword;
  bool tapped = false;

  TextForm({
    super.key,
    required this.label,
    required this.controller,
    this.validator,
    this.isPassword, required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: TextFormField(
        cursorColor: AppColors.primaryGreen,
        decoration: InputDecoration(
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          alignLabelWithHint: true,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryGreen, width: 0.8),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          enabledBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.enabledBorderColor, width: 0.8),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          hintText: hint,
          filled: true,
          fillColor: AppColors.white,
          label: Align(alignment: Alignment.centerRight, child: label),
          floatingLabelAlignment: FloatingLabelAlignment.center,
          hintStyle: const TextStyle(color: AppColors.primaryGreen),
          hintTextDirection: TextDirection.rtl,
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        ),
        controller: controller,
        validator: validator,
        obscureText: isPassword == null ? false : true,
        onTap: () {
          tapped = !tapped;
        },
      ),
    );
  }
}
