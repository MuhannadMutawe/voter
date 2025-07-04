import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OptionsLogo extends StatelessWidget {
  const OptionsLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SvgPicture.asset('assets/svgs/option_page.svg'),
    );
  }
}
