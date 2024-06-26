import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  final Widget child;

  const Panel({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      constraints: const BoxConstraints(
        minHeight: 70,
      ),
      child: child,
    );
  }
}
