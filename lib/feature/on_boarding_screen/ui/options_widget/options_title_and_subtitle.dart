import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/theming/text_styles.dart';

class OptionsTitleAndSubtitle extends StatelessWidget {
  const OptionsTitleAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'أهلا بك !',
          style: TextStyles.font24BlockSemiBold,
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Text('يرجى اختيار نوع اليوزر حتى تتمكن من الدخول للتطبيق',style: TextStyles.font16BlockNormal,textAlign: TextAlign.center,),
        ),
      ],
    );
  }
}
