import 'package:flutter/material.dart';

class MatchProgressBar extends StatefulWidget {
  const MatchProgressBar({super.key});

  @override
  _MatchProgressBarState createState() => _MatchProgressBarState();
}

class _MatchProgressBarState extends State<MatchProgressBar> {
  double widthFactor = 0.7;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Divider(
          height: 42,
          thickness: 4,
          color: Color(0xfff4f4f4),
        ),
        FractionallySizedBox(
          widthFactor: widthFactor,
          child: const Divider(
            height: 42,
            color: Color(0xfff5d70a),
            thickness: 4,
          ),
        ),
      ],
    );
  }

  void updateProgress(double newFactor) {
    setState(() {
      widthFactor = newFactor;
    });
  }
}
