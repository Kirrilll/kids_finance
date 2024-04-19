import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnboardingPage extends StatefulWidget {
  const UnboardingPage({super.key});

  @override
  State<UnboardingPage> createState() => _UnboardingPageState();
}

class _UnboardingPageState extends State<UnboardingPage> {

  final _pageController = PageController();

  onContinue() {
    final currPageIndex = (_pageController.page ?? 0).toInt();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            Center(child: Text('1'),),
            Center(child: Text('2'),),
            Center(child: Text('3'),)
          ],
        ),
        floatingActionButton: ElevatedButton(child: const Text('Продолжить'), onPressed: () => {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
