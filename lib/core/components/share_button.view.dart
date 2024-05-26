import 'package:flutter/material.dart';
import 'package:imperio/core/components/primary_button.view.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ImperioButton(
        height: 36,
        width: 36,
        icon: Image.asset(
          'assets/images/shareIcon.png',
        ),
        onPressed: () {},
        backgroundColor: const Color(0xfff5d70a));
  }
}
