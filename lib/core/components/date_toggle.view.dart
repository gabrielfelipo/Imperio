import 'package:flutter/material.dart';

class DateToggle extends StatelessWidget {
  const DateToggle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.black,
      ),
      child: const Text(
        'Live',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
