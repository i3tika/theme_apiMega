
import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_fonts.dart';

class CustomtextField extends StatelessWidget {
  const CustomtextField({
    Key? key,
    required this.lableText,
    required this.controller,
  }) : super(key: key);
  final String lableText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          fillColor: AppColors.white.withOpacity(0.1),
          label: Text(
            lableText,
            style: AppFonts.w600s15.copyWith(color: AppColors.white),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14))),
    );
  }
}
