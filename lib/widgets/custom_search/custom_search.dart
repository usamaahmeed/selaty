import 'package:flutter/material.dart';

import '../../core/app_colors/app_colors.dart';
import '../custom_text_form/custom_text_form.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController controller;
  final bool onlyRead;
  final bool autoFoucus;

  const CustomSearchField({
    super.key,
    required this.controller,
    this.onlyRead = false,
    this.autoFoucus = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      autoFoucus: autoFoucus,
      filled: true,
      onlyRead: onlyRead,
      bgColors: white,
      controller: controller,
      hint: 'البحث عن المنتجات ...',
      textColors: greyColor,
      suffixIcon: Icon(
        Icons.search_outlined,
        color: greyColor,
      ),
    );
  }
}
