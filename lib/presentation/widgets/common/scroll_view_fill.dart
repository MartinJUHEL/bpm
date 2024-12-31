import 'package:flutter/cupertino.dart';

class ScrollViewFill extends StatelessWidget {
  const ScrollViewFill({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [SliverFillRemaining(hasScrollBody: false, child: child)],
    );
  }
}
