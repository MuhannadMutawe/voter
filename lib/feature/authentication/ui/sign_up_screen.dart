import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voter/core/helper/navigator_extension.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/core/widget/app_elivated_button.dart';
import 'package:voter/core/widget/app_text_field.dart';
import 'package:voter/feature/authentication/ui/widget/title_and_subtitle.dart';

import '../../../core/widget/scaffold_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;
  bool _obscureText2 = true;

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
                title: 'إنشاء حساب !',
                subTitle: 'يرجى ملء ملئ الحقول لإنشاء الحساب!',
              ),
              verticalSpacing(35),
              SvgPicture.asset(
                'assets/svgs/signup_page.svg',
              ),
              verticalSpacing(25),
              AppTextField(
                title: 'الاسم',
                hinText: 'قم بإدخال اسمك',
              ),
              verticalSpacing(16),
              AppTextField(
                title: 'البريد الإلكتروني',
                hinText: 'قم بإدخال بريدك الإلكتروني',
              ),
              verticalSpacing(16),
              AppTextField(
                title: 'رقم الهاتف',
                hinText: '+962 555 555 555',
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
              verticalSpacing(16),
              AppTextField(
                title: 'تأكيد كلمة المرور',
                hinText: '••••••••••',
                obscureText: _obscureText2,
                suffix: InkWell(
                  onTap: () {
                    setState(() {
                      _obscureText2 = !_obscureText2;
                    });
                  },
                  child: Icon(
                      _obscureText2 ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              verticalSpacing(40),
              AppElevatedButton(
                label: 'تسجيل',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
