import 'package:flutter/material.dart';
import 'package:voter/feature/home_screen/ui/page_widget/linear_progress_indicator.dart';

import '../../../../core/helper/spacing.dart';

class PageProgressIndicator extends StatelessWidget {
  const PageProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndLinearProgressIndicator(title: 'صوتوا', value: 0.75),
        verticalSpacing(15),
        TitleAndLinearProgressIndicator(title: 'لم يصوتوا بعد', value: 0.35),
      ],
    );
  }
}
