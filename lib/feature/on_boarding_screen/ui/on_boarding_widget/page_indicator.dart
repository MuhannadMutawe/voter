import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.page});

  final int page;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 8.h,
          width: page == 0 ? 50.w : 25.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: page == 0
                ? Color(0xff2C5976)
                : Color(0xff2C5976).withAlpha(100),
          ),
        ),
        horizontalSpacing(7),
        Container(
          height: 8.h,
          width: page == 1 ? 50.w : 25.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: page == 1
                ? Color(0xff2C5976)
                : Color(0xff2C5976).withAlpha(100),
          ),
        ),
      ],
    );
  }
}
