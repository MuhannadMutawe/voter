import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voter/core/helper/spacing.dart';

import '../../../../core/theming/text_styles.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyles.font24BlockSemiBold,
        ),
        verticalSpacing(8),
        Text(
          subTitle,
          style: TextStyles.font16BlockNormal,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
