import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/feature/on_boarding_screen/ui/on_boarding_widget/page_indicator.dart';
import 'package:voter/feature/on_boarding_screen/ui/on_boarding_widget/page_title_and_subtitle.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key,});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 160.h, bottom: 55.h),
      child: Column(
        children: [
          SvgPicture.asset('assets/svgs/ob_page_1.svg'),
          verticalSpacing(65),
          PageIndicator(page: 0,),
          verticalSpacing(40),
          PageTitleAndSubtitle(
            title: 'كيف يعمل نظام ',
            titleExtension: ' الجمعية',
            subTitle: 'يعمل نظام الجمعية كنظام اداري لإدارة المجلس الانتخابي للجمعية',
          ),
        ],
      ),
    );
  }
}