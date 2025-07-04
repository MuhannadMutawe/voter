import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/feature/on_boarding_screen/ui/on_boarding_widget/page_three_start_button.dart';
import 'package:voter/feature/on_boarding_screen/ui/on_boarding_widget/page_title_and_subtitle.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 220.h),
      child: Column(
        children: [
          SvgPicture.asset('assets/svgs/ob_page_3.svg'),
          verticalSpacing(90),
          PageTitleAndSubtitle(
            title: 'مرحبا بك !',
            subTitle:
                'إنشاء حساب والوصول الى أكبر عدد من المرشحين والمناديب في الأردن',
          ),
          verticalSpacing(45),
          PageThreeStartButton()
        ],
      ),
    );
  }
}