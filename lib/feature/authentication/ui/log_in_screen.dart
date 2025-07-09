import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voter/core/helper/navigator_extension.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/core/routing/routes.dart';
import 'package:voter/core/theming/text_styles.dart';
import 'package:voter/core/widget/scaffold_background.dart';
import 'package:voter/feature/authentication/ui/widget/title_and_subtitle.dart';

import '../../../core/widget/app_elivated_button.dart';
import '../../../core/widget/app_text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return ScaffoldBackground(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: IconButton(
              padding: EdgeInsets.only(right: 7.w),
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => context.pop(),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(right: 18.h, left: 18.h, bottom: 30.h),
          child: Column(
            children: [
              TitleAndSubtitle(
                title: 'مرحبًا بعودتك !',
                subTitle: 'للمتابعة قم بتسجيل الدخول'
              ),
              verticalSpacing(40),
              SvgPicture.asset('assets/svgs/login_page.svg'),
              verticalSpacing(30),
              AppTextField(
                title: 'البريد الإلكتروني',
                hinText: 'example@example.com',
              ),
              verticalSpacing(16),
              AppTextField(
                title: 'كلمة المرور',
                hinText: '••••••••••',
                obscureText: _obscureText,
                suffix: InkWell(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
              verticalSpacing(5),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'نسيت كلمة المرور ؟',
                    style: TextStyles.font14BlockNormal,
                  ),
                ),
              ),
              verticalSpacing(40),
              AppElevatedButton(
                label: 'تسجيل دخول',
                onPressed: () => context.pushNamedAndRemoveUntil(Routes.candidateHomeScreen,predicate: (route) => route.isCurrent,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
