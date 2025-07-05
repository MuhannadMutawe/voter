import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/theming/text_styles.dart';

import '../../../../core/helper/spacing.dart';

class PageTitleAndSubtitle extends StatelessWidget {
  const PageTitleAndSubtitle(
      {super.key,
      required this.title,
      required this.subTitle,
      this.titleExtension});

  final String title;
  final String? titleExtension;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: title,
                style: TextStyles.font24BlockSemiBold,
              ),
              TextSpan(
                text: titleExtension,
                style: TextStyles.font24BlockSemiBold.copyWith(
                  color: Color(0xff6FB3E0),
                ),
              ),
            ],
          ),
        ),
        verticalSpacing(10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyles.font16BlockNormal,
          ),
        ),
      ],
    );
  }
}
