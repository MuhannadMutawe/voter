import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/core/theming/text_styles.dart';

import '../../feature/home_screen/data/models/bn_item_model.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    super.key,
    required this.selectedIndex,
    required this.bnItems,
    this.onSelected,
  });

  final int selectedIndex;
  final List<BnItemModel> bnItems;
  final ValueChanged<int>? onSelected;

  VoidCallback _handleTap(int index) {
    return onSelected != null ? () => onSelected!(index) : () {};
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      padding: EdgeInsets.only(bottom: 14.h, left: 5.w, right: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(28.r),
          topLeft: Radius.circular(28.r),
        ),
        color: Color(0xffd0d6da),
      ),
      child: Row(
        children: List<Widget>.generate(
          bnItems.length,
          (index) {
            return Expanded(
              child: InkWell(
                onTap: _handleTap(index),
                child: BnItem(
                  isSelected: index == selectedIndex,
                  svgUrl: bnItems[index].icon,
                  label: bnItems[index].label,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class BnItem extends StatelessWidget {
  const BnItem({
    super.key,
    required this.isSelected,
    required this.svgUrl,
    required this.label,
  });

  final bool isSelected;
  final String svgUrl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 3.h,
            width: 55.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: isSelected ? Color(0xff2C5976) : Colors.transparent,
            ),
          ),
          Spacer(),
          SvgPicture.asset(
            svgUrl,
            colorFilter: ColorFilter.mode(
              isSelected ? Color(0xff03384a) : Color(0xff0b567e).withAlpha(150),
              isSelected ? BlendMode.modulate : BlendMode.dst,
            ),
          ),
          verticalSpacing(3),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyles.font16BlockSemiBold.copyWith(
                fontSize: 15.sp,
                color: isSelected
                    ? Color(0xff2C5976)
                    : Color(0xff2C5976).withAlpha(100)),
          ),
          Spacer()
        ],
      ),
    );
  }
}
