import 'package:flutter/material.dart';

class ExpandedCenterWidget extends StatelessWidget {
  const ExpandedCenterWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(child: child),
    );
  }
}
