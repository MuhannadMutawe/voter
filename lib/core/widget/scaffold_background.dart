import 'package:flutter/material.dart';
import 'package:voter/core/theming/app_colors.dart';

class ScaffoldBackground extends StatelessWidget {
  const ScaffoldBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/scaffold_image.png'),
          alignment: Alignment.topLeft,
        ),
        color: AppColors.scaffoldBackground,
      ),
      child: child,
    );
  }
}
