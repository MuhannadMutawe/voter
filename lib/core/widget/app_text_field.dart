import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/core/theming/text_styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.title,
    this.hinText,
    this.controller,
    this.obscureText,
    this.contentPadding,
    this.prefix,
    this.suffix,
  });

  final String? title;
  final String? hinText;
  final TextEditingController? controller;
  final bool? obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefix;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ' ${title ?? ''}',
          style: TextStyles.font16BlockMedium,
        ),
        verticalSpacing(8),
        TextField(
          controller: controller,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            contentPadding: contentPadding ?? EdgeInsets.only(right: 12.w, top: 14.h, bottom: 14.h),
            filled: true,
            fillColor: Colors.white,
            hintText: hinText,
            hintStyle: TextStyles.font14Block54Normal,
            prefixIcon: prefix,
            suffixIcon: suffix,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
