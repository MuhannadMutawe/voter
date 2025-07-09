import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';

class TableBody extends StatelessWidget {
  const TableBody({super.key, required this.column1, required this.column2, required this.column3, required this.column4});

  final Widget column1;
  final Widget column2;
  final Widget column3;
  final Widget column4;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              child: column1,
            ),
            Expanded(
              child: column2
            ),
            Expanded(
              child: column3,
            ),
            Expanded(
              child: column4,
            ),
          ],
        );
      },
      separatorBuilder: (context, index) {
        return verticalSpacing(10);
      },
      itemCount: 20,
    );
  }
}
