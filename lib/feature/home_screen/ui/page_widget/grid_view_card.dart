import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/text_styles.dart';

class PageOneGridViewCard extends StatelessWidget {
  const PageOneGridViewCard(
      {super.key, required this.title, required this.svgUrl});

  final String title;
  final String svgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 168.w,
            height: 106.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/b1.png'),
              ),
              color: Color(0xff2C5976)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(svgUrl),
                verticalSpacing(10),
                Text(
                  title,
                  style: TextStyles.font16WhiteSemiBold,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
              decoration: BoxDecoration(color: Color(0xffc9ced3)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Color(0xff2C5976),
                      ),
                      horizontalSpacing(5),
                      Text(
                        'الذكور',
                        style: TextStyles.font14BlockNormal,
                      ),
                      Spacer(),
                      Text(
                        '26',
                        style: TextStyles.font14BlockNormal,
                      ),
                    ],
                  ),
                  verticalSpacing(3),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Color(0xff2C5976),
                      ),
                      horizontalSpacing(5),
                      Text(
                        'الذكور',
                        style: TextStyles.font14BlockNormal,
                      ),
                      Spacer(),
                      Text(
                        '26',
                        style: TextStyles.font14BlockNormal,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}