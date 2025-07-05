import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/feature/on_boarding_screen/ui/on_boarding_widget/page_indicator.dart';
import 'package:voter/feature/on_boarding_screen/ui/on_boarding_widget/page_title_and_subtitle.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 177.h),
      child: Column(
        children: [
          SvgPicture.asset('assets/svgs/ob_page_2.svg'),
          verticalSpacing(65),
          PageIndicator(page: 1,),
          verticalSpacing(40),
          PageTitleAndSubtitle(
            title: 'كيف يعمل ',
            titleExtension: ' البرنامج',
            subTitle: 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات.',
          ),
        ],
      ),
    );
  }
}