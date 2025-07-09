import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theming/text_styles.dart';

class PageTitleCard extends StatelessWidget {
  const PageTitleCard({super.key, required this.title, required this.iconUrl});

  final String iconUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/b2.png')),
        color: Color(0xff2C5976),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
        children: [
          SvgPicture.asset(iconUrl),
          Text(title,style: TextStyles.font24WhiteSemiBold,)
        ],
      ),
    );
  }
}
