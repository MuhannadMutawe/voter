import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/feature/home_screen/data/models/grid_view_card_model.dart';

import '../../page_widget/grid_view_card.dart';

class RecordPage1 extends StatelessWidget {
  const RecordPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 18.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return PageOneGridViewCard(
          title: cardItems[index].title,
          svgUrl: cardItems[index].svgUrl,
        );
      },
    );
  }
}

List<GridViewCardModel> cardItems = [
  GridViewCardModel('إجمالي المضامين (24)', 'assets/svgs/c1.svg'),
  GridViewCardModel('مضاميني (15)', 'assets/svgs/c7.svg'),
  GridViewCardModel('قاموا بالتصويت (8)', 'assets/svgs/c8.svg'),
  GridViewCardModel('لم يصوتوا بعد (25)', 'assets/svgs/c9.svg'),
  GridViewCardModel('غير المضامين (3)', 'assets/svgs/c2.svg'),
  GridViewCardModel('إجمالي الناخبين (45)', 'assets/svgs/c6.svg'),
];
