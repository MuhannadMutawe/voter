import 'package:flutter/material.dart';
import 'package:voter/core/widget/scaffold_background.dart';
import 'package:voter/feature/home_screen/data/models/bn_item_model.dart';
import 'package:voter/feature/home_screen/data/models/home_pages_model.dart';

import '../../../core/widget/app_nav_bar.dart';
import 'home_widget/record_home_pages/record_page_1.dart';
import 'home_widget/record_home_pages/record_page_2.dart';
import 'home_widget/record_home_pages/record_page_3.dart';
import 'home_widget/record_home_pages/record_page_4.dart';

class RecordHomeScreen extends StatefulWidget {
  const RecordHomeScreen({super.key});

  @override
  State<RecordHomeScreen> createState() => _RecordHomeScreenState();
}

class _RecordHomeScreenState extends State<RecordHomeScreen> {
  int _index = 0;

  List<HomePagesModel> homePagesItems = [
    HomePagesModel('الإحصائيات', RecordPage1()),
    HomePagesModel('إضافة مضامين', RecordPage2()),
    HomePagesModel('مضاميني', RecordPage3()),
    HomePagesModel('حالة التصويت', RecordPage4()),
  ];

  List<BnItemModel> bnItems = [
    BnItemModel('الإحصائيات', 'assets/svgs/b1.svg'),
    BnItemModel(' مضامين', 'assets/svgs/b5.svg'),
    BnItemModel('مضاميني', 'assets/svgs/b2.svg'),
    BnItemModel('حالة التصويت', 'assets/svgs/b6.svg'),
  ];


  @override
  Widget build(BuildContext context) {
    return ScaffoldBackground(
      child: Scaffold(
        appBar: AppBar(
          title: Text(homePagesItems[_index].title),
        ),
        body: homePagesItems[_index].body,
        bottomNavigationBar: AppNavBar(
          bnItems: bnItems,
          selectedIndex: _index,
          onSelected: (value) {
            setState(
                  () {
                _index = value;
              },
            );
          },
        ),
      ),
    );
  }
}
