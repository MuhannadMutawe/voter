import 'package:flutter/material.dart';
import 'package:voter/core/widget/app_nav_bar.dart';
import 'package:voter/core/widget/scaffold_background.dart';
import 'package:voter/feature/home_screen/data/models/bn_item_model.dart';
import 'package:voter/feature/home_screen/data/models/home_pages_model.dart';
import 'package:voter/feature/home_screen/ui/home_widget/delegate_home_pages/delegate_page_1.dart';
import 'package:voter/feature/home_screen/ui/home_widget/delegate_home_pages/delegate_page_2.dart';
import 'package:voter/feature/home_screen/ui/home_widget/delegate_home_pages/delegate_page_3.dart';
import 'package:voter/feature/home_screen/ui/home_widget/delegate_home_pages/delegate_page_4.dart';

class DelegateHomeScreen extends StatefulWidget {
  const DelegateHomeScreen({super.key});

  @override
  State<DelegateHomeScreen> createState() => _DelegateHomeScreenState();
}

class _DelegateHomeScreenState extends State<DelegateHomeScreen> {
  int _index = 0;

  List<HomePagesModel> homePagesItems = [
    HomePagesModel('الإحصائيات', DelegatePage1()),
    HomePagesModel('المضامين', DelegatePage2()),
    HomePagesModel('قام بالتصويت', DelegatePage3()),
    HomePagesModel('لم يصوت', DelegatePage4()),
  ];

  List<BnItemModel> bnItems = [
    BnItemModel('الإحصائيات', 'assets/svgs/b1.svg'),
    BnItemModel('المضامين', 'assets/svgs/b7.svg'),
    BnItemModel('قام بالتصويت', 'assets/svgs/b6.svg'),
    BnItemModel('لم يصوت', 'assets/svgs/b8.svg'),
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
