import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/core/theming/text_styles.dart';
import 'package:voter/feature/home_screen/ui/page_widget/table_body.dart';
import 'package:voter/feature/home_screen/ui/page_widget/table_head.dart';

import '../../page_widget/page_title_card.dart';

class CandidatePage3 extends StatelessWidget {
  const CandidatePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
      child: Column(
        children: [
          PageTitleCard(
            title: 'قائمة اللجان الذكور (23)',
            iconUrl: 'assets/svgs/10ad0bbf05a1669e66dfa10ae1e3de7a 1.svg',
          ),
          verticalSpacing(15),
          TableHead(
            column1Name: 'اسم المحضر',
            column2Name: 'اسم المساهم',
            column3Name: 'الرقم المدني',
            column4Name: 'حالة التصويت',
          ),
          verticalSpacing(10),
          TableBody(
            column1: Text(
              'أحمد سميح',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
            column2: Text(
              'أحمد نبيل',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
            column3: Text(
              '15685',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
            column4: Icon(
              Icons.save_rounded,
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
