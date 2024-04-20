import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_finance/features/unboarding/presentation/widgets/progress_line.dart';

class UnboardingPage extends StatefulWidget {
  const UnboardingPage({super.key});

  @override
  State<UnboardingPage> createState() => _UnboardingPageState();
}

class _UnboardingPageState extends State<UnboardingPage> {
  final _pageController = PageController();
  final ValueNotifier<int> _currPageNotifier = ValueNotifier(0);

  final _unboardingElements = [
    SvgPicture.asset('assets/images/unboarding_p1.svg'),
    SvgPicture.asset('assets/images/unboarding_p2.svg'),
    SvgPicture.asset('assets/images/unboarding_p3.svg'),
  ];

  onContinue() {
    _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  void initState() {
    _pageController.addListener(() {
      final position = _pageController.positions.isNotEmpty
          ? _pageController.page?.round() ?? 0
          : 0;
      _currPageNotifier.value = position;
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _currPageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: _unboardingElements,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ValueListenableBuilder(
                    valueListenable: _currPageNotifier,
                    builder: (BuildContext context, int value, Widget? _) => Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < _unboardingElements.length * 2 - 1; i++)
                            i.isEven
                                ?  ProgressLine(isActive: value == (i ~/ 2))
                                : const SizedBox(width: 6)
                        ],
                    )
                ),
                const SizedBox(height: 14),
                ElevatedButton(onPressed: onContinue, child: const Text('Далее')),
                const SizedBox(height: 40)
              ],
            ),
          )
        ],
      ),
    );
  }
}
