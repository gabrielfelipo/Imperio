import 'package:flutter/material.dart';
import 'package:imperio/core/components/primary_button.view.dart';

class RedirectionTextButton extends StatelessWidget {
  const RedirectionTextButton(
      {super.key, required this.description, required this.action});

  final String description;
  final void Function() action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          description,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff505854),
            fontFamily: 'Montserrat',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ImperioButton(
          height: 48,
          onPressed: action,
          backgroundColor: const Color(0xfff5d70a),
          icon: const Icon(
            Icons.arrow_forward,
            size: 26,
          ),
          width: 67,
        )
      ],
    );
  }
}
