import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/core/theming/text_styles.dart';
import 'package:voter/feature/home_screen/ui/page_widget/table_body.dart';
import 'package:voter/feature/home_screen/ui/page_widget/table_head.dart';

import '../../page_widget/page_progress_indicator.dart';
import '../../page_widget/page_title_card.dart';

class RecordPage4 extends StatelessWidget {
  const RecordPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
      child: Column(
        children: [
          PageProgressIndicator(),
          verticalSpacing(25),
          TableHead(
            column1Name: 'اسم اللجنة',
            column2Name: 'عدد المضامين',
            column3Name: 'عدد المصوتين',
            column4Name: 'النسبة المئوية',
          ),
          verticalSpacing(10),
          TableBody(
            column1: Text(
              'اللجنة التعليمية',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
            column2: Text(
              '72',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
            column3: Text(
              '144',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
            column4: Text(
              '47%',
              textAlign: TextAlign.center,
              style: TextStyles.font14BlockNormal,
            ),
          ),
        ],
      ),
    );
  }
}
