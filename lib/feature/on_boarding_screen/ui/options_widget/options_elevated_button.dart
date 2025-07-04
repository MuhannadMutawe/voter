import 'package:flutter/material.dart';
import 'package:voter/core/helper/spacing.dart';

import '../../../../core/widget/app_elivated_button.dart';

class OptionsElevatedButton extends StatelessWidget {
  const OptionsElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          AppElevatedButton(
            label: 'الدخول كمحضر',
            onPressed: () {},
          ),
          verticalSpacing(20),
          AppElevatedButton(
            label: 'الدخول كمندوب',
            onPressed: () {},
          ),
          verticalSpacing(20),
          AppElevatedButton(
            label: ' الدخول كمرشح',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
