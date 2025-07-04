import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/helper/navigator_extension.dart';
import 'package:voter/core/routing/routes.dart';
import 'package:voter/core/theming/text_styles.dart';
import 'package:voter/core/widget/app_elivated_button.dart';

import '../../../../core/helper/spacing.dart';

class PageThreeStartButton extends StatelessWidget {
  const PageThreeStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: AppElevatedButton(
            label: 'ابدأ الآن',
            onPressed: () => context.pushReplacement(Routes.optionsScreen),
          ),
        ),
        verticalSpacing(18),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: ' هل لديك حساب ؟',
                style: TextStyles.font16BlockNormal,
              ),
              TextSpan(
                text: '  تسجيل الدخول',
                style: TextStyles.font16BlockNormal.copyWith(
                  color: Color(0xff6FB3E0),
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = (){}
              ),
            ],
          ),
        )
      ],
    );
  }
}
