import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/theming/text_styles.dart';

class PageSkipButtons extends StatelessWidget {
  const PageSkipButtons({super.key, this.skipButtonOnPressed, this.nextPageButtonOnPressed});

  final void Function()? skipButtonOnPressed;
  final void Function()? nextPageButtonOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Row(
        children: [
          TextButton(
            onPressed: skipButtonOnPressed,
            child: Text(
              'تخطى',
              style: TextStyles.font24BlockSemiBold,
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: nextPageButtonOnPressed,
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                backgroundColor: Color(0xff2C5976),
                iconColor: Colors.white,
                iconSize: 30,
                elevation: 15
              // elevation: 20,
            ),
            child: Center(child: Icon(Icons.arrow_forward_ios)),
          )
        ],
      ),
    );
  }
}
