import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/core/helper/spacing.dart';
import 'package:voter/core/widget/scaffold_background.dart';
import 'package:voter/feature/on_boarding_screen/ui/options_widget/options_elevated_button.dart';
import 'package:voter/feature/on_boarding_screen/ui/options_widget/options_logo.dart';
import 'package:voter/feature/on_boarding_screen/ui/options_widget/options_title_and_subtitle.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBackground(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 40.h),
          child: Column(
            children: [
              OptionsLogo(),
              verticalSpacing(85),
              OptionsTitleAndSubtitle(),
              verticalSpacing(50),
              OptionsElevatedButton()
            ],
          ),
        ),
      ),
    );
  }
}
