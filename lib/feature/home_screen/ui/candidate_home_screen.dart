import 'package:flutter/material.dart';
import 'package:voter/core/widget/scaffold_background.dart';
import 'package:voter/feature/home_screen/data/models/bn_item_model.dart';
import 'package:voter/feature/home_screen/data/models/home_pages_model.dart';
import 'package:voter/feature/home_screen/ui/home_widget/candidate_pages/candidate_page_3.dart';
import 'package:voter/feature/home_screen/ui/home_widget/candidate_pages/candidate_page_4.dart';

import '../../../core/widget/app_nav_bar.dart';
import 'home_widget/candidate_pages/candidate_page_2.dart';
import 'home_widget/candidate_pages/candidate_page_1.dart';

class CandidateHomeScreen extends StatefulWidget {
  const CandidateHomeScreen({super.key});

  @override
  State<CandidateHomeScreen> createState() => _CandidateHomeScreenState();
}

class _CandidateHomeScreenState extends State<CandidateHomeScreen> {
  int _index = 0;

  List<HomePagesModel> homePagesItems = [
    HomePagesModel('الإحصائيات', CandidatePage1()),
    HomePagesModel('المحضرين', CandidatePage2()),
    HomePagesModel('اللجان الذكور', CandidatePage3()),
    HomePagesModel('اللجان الإناث', CandidatePage4()),
  ];

  List<BnItemModel> bnItems = [
    BnItemModel('الإحصائيات', 'assets/svgs/b1.svg'),
    BnItemModel('المحضرين', 'assets/svgs/b2.svg'),
    BnItemModel('لجان الذكور', 'assets/svgs/b3.svg'),
    BnItemModel('لجان الإناث', 'assets/svgs/b4.svg'),
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
            setState(() {
              _index = value;
            });
          },
        ),
      ),
    );
  }
}
