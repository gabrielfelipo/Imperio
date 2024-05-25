import 'package:flutter/material.dart';

class Championship extends StatelessWidget {
  final Image icon;

  const Championship({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color(0xffc4b23a).withOpacity(0.2)),
      child: icon,
    );
  }
}
