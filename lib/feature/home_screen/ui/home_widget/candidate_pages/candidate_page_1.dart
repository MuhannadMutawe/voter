import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/feature/home_screen/data/models/grid_view_card_model.dart';

import '../../page_widget/grid_view_card.dart';

class CandidatePage1 extends StatelessWidget {
  const CandidatePage1({super.key});

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
  GridViewCardModel('مضامين مكررة (0)', 'assets/svgs/c2.svg'),
  GridViewCardModel('صافي المضامين (8)', 'assets/svgs/c3.svg'),
  GridViewCardModel('مضامين العائلة (25)', 'assets/svgs/c4.svg'),
  GridViewCardModel('قاموا بالتصويت (3)', 'assets/svgs/c5.svg'),
  GridViewCardModel('إجمالي الناخبين (45)', 'assets/svgs/c6.svg'),
];
