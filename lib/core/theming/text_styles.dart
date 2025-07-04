import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_weight_helper.dart';

class TextStyles{

  static TextStyle font24BlockSemiBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.black,
      fontFamily: 'Cairo'
  );

  static TextStyle font16BlockNormal = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.normal,
      color: Colors.black,
      fontFamily: 'Cairo'
  );

  static TextStyle font22WhiteMedium = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.medium,
      color: Colors.white,
      fontFamily: 'Cairo'
  );

}