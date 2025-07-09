import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class TableHead extends StatelessWidget {
  const TableHead({super.key, required this.column1Name, required this.column2Name, required this.column3Name, required this.column4Name});

  final String column1Name;
  final String column2Name;
  final String column3Name;
  final String column4Name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
      decoration: BoxDecoration(
          color: Color(0xff2C5976),
          borderRadius: BorderRadius.circular(7)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              column1Name,
              textAlign: TextAlign.center,
              style: TextStyles.font12WhiteMedium,
            ),
          ),
          Expanded(
            child: Text(
              column2Name,
              textAlign: TextAlign.center,
              style: TextStyles.font12WhiteMedium,
            ),
          ),
          Expanded(
            child: Text(
              column3Name,
              textAlign: TextAlign.center,
              style: TextStyles.font12WhiteMedium,
            ),
          ),
          Expanded(
            child: Text(
              column4Name,
              textAlign: TextAlign.center,
              style: TextStyles.font12WhiteMedium,
            ),
          ),
        ],
      ),
    );
  }
}
