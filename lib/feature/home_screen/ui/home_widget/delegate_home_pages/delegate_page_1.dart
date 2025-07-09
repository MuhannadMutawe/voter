import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/feature/home_screen/data/models/grid_view_card_model.dart';

import '../../page_widget/grid_view_card.dart';
import '../../page_widget/page_progress_indicator.dart';

class DelegatePage1 extends StatelessWidget {
  const DelegatePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric( horizontal:20.w),
              child: PageProgressIndicator(),
            ),
            verticalSpacing(10),
            GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 18.w),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
              ),
              itemCount: cardItems.length,
              itemBuilder: (context, index) {
                return PageOneGridViewCard(
                  title: cardItems[index].title,
                  svgUrl: cardItems[index].svgUrl,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<GridViewCardModel> cardItems = [
  GridViewCardModel('مضاميني (15)', 'assets/svgs/c7.svg'),
  GridViewCardModel('إجمالي الناخبين (45)', 'assets/svgs/c6.svg'),
  GridViewCardModel('قاموا بالتصويت (8)', 'assets/svgs/c8.svg'),
  GridViewCardModel('لم يصوتوا بعد (25)', 'assets/svgs/c9.svg'),

];
