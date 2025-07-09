import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/core/theming/text_styles.dart';
import 'package:voter/feature/home_screen/ui/page_widget/table_body.dart';
import 'package:voter/feature/home_screen/ui/page_widget/table_head.dart';

import '../../page_widget/page_title_card.dart';

class CandidatePage2 extends StatelessWidget {
  const CandidatePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
      child: Column(
        children: [
          PageTitleCard(
            title: 'قائمة المحضرين (10)',
            iconUrl: 'assets/svgs/users-gear-solid 1.svg',
          ),
          verticalSpacing(15),
          TableHead(
              column1Name: 'اسم المحضر',
              column2Name: 'عدد المضامين',
              column3Name: 'عدد المصوتين',
              column4Name: 'النسبة المئوية'),
          verticalSpacing(10),
          TableBody(
            column1: Text(
              'محمد العالي',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
            column2: Text(
              '45',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
            column3: Text(
              '12',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
            column4: Text(
              '60%',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
          ),
        ],
      ),
    );
  }
}
