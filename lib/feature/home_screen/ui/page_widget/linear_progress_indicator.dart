import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/core/theming/text_styles.dart';

class TitleAndLinearProgressIndicator extends StatelessWidget {
  const TitleAndLinearProgressIndicator(
      {super.key, required this.title, required this.value});

  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.font16BlockNormal,
        ),
        horizontalSpacing(5),
        Expanded(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 12.h,
              borderRadius: BorderRadius.circular(15.r),
              backgroundColor: Color(0xff2C5976).withAlpha(100),
              valueColor: AlwaysStoppedAnimation(
                Color(0xff2C5976),
              ),
            ),
          ),
        ),
        horizontalSpacing(5),
        Text('%${(value*100).round()}')
      ],
    );
  }
}
