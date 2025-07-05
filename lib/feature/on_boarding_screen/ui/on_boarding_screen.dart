import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voter/feature/on_boarding_screen/ui/on_boarding_pages/page_one.dart';
import 'package:voter/feature/on_boarding_screen/ui/on_boarding_pages/page_three.dart';
import 'package:voter/feature/on_boarding_screen/ui/on_boarding_pages/page_two.dart';

import '../../../core/widget/scaffold_background.dart';
import 'on_boarding_widget/page_skip_buttons.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBackground(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(bottom:50.h ),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    setState(() {
                      _index = value;
                    });
                  },
                  children: [
                    PageOne(),
                    PageTwo(),
                    PageThree(),
                  ],
                ),
              ),
              Visibility(
                visible: _index == 0 || _index == 1,
                replacement: Container(),
                child: PageSkipButtons(
                  nextPageButtonOnPressed: () {
                    setState(
                      () {
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 800),
                            curve: Curves.bounceInOut);
                      },
                    );
                  },
                  skipButtonOnPressed: () {
                    setState(
                      () {
                        _pageController.animateToPage(
                          2,
                          duration: Duration(milliseconds: 800),
                          curve: Curves.bounceInOut,
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
