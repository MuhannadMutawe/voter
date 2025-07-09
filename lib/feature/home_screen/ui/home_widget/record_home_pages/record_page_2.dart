import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/core/theming/text_styles.dart';
import 'package:voter/core/widget/app_text_field.dart';
import 'package:voter/feature/home_screen/ui/page_widget/linear_progress_indicator.dart';
import 'package:voter/feature/home_screen/ui/page_widget/table_body.dart';
import 'package:voter/feature/home_screen/ui/page_widget/table_head.dart';

import '../../page_widget/page_progress_indicator.dart';
import '../../page_widget/page_title_card.dart';

class RecordPage2 extends StatelessWidget {
  const RecordPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
      child: Column(
        children: [
          AppTextField(
            contentPadding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 8.w),
            prefix: Icon(Icons.search),
            suffix: Icon(
              Icons.cancel,
              color: Color(0xff2C5976),
            ),
            hinText: 'ابحث بالاسم أو الرقم المدني أو العائلة الخ .....',
          ),
          verticalSpacing(5),
          AppTextField(
            contentPadding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 8.w),
            hinText: 'الكل',
            suffix: Icon(Icons.keyboard_arrow_down,color: Color(0xff2C5976),),
          ),
          verticalSpacing(20),
          PageProgressIndicator(),
          verticalSpacing(20),
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
