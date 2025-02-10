import 'package:flutter/material.dart';

class AppTab extends StatelessWidget {
  final String tabText;
  final bool tabBorderLeft;
  final bool tabActive;

  const AppTab(
      {super.key,
      this.tabText = '',
      this.tabBorderLeft = true,
      this.tabActive = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          color: tabActive == true ? Colors.white : Colors.transparent,
          borderRadius: tabBorderLeft == true
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      child: Center(child: Text(tabText)),
    );
  }
}
