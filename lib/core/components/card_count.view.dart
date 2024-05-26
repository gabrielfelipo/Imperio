import 'package:flutter/material.dart';
import 'package:imperio/core/Labels.dart';

class CardCount extends StatelessWidget {
  const CardCount({super.key, required this.color, this.value});

  final Color color;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: 73.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color.withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value ?? '0.0',
            style: subTitleBoldLabel,
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            width: 9.6,
            height: 14.4,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(1.2)),
          )
        ],
      ),
    );
  }
}
