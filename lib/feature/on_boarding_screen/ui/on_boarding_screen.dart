import 'package:flutter/material.dart';
import 'package:voter/core/widget/scaffold_background.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBackground(
      child: Scaffold(
        appBar: AppBar(
          title: Text('On boarding screen'),
        ),
        body: Center(child: Text('hello'),),
      ),
    );
  }
}
