import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/text_styles.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.label,
    this.padding,
    this.minimumSize,
    this.backgroundColor,
    this.borderRadius,
    this.onPressed,
  });

  final String label;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: padding ?? EdgeInsets.symmetric(vertical: 6.h),
        minimumSize: minimumSize ?? Size(double.infinity, 55.h),
        backgroundColor: backgroundColor ?? Color(0xff2C5976),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(18),
        ),
      ),
      child: Text(
        label,
        style: TextStyles.font20WhiteMedium,
      ),
    );
  }
}
