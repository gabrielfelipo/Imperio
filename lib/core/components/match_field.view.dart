import 'package:flutter/material.dart';
import 'package:imperio/core/components/match_card.view.dart';

class MatchField extends StatelessWidget {
  const MatchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 416,
            ),
            Container(
              height: 210,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xfffdfdfd),
                    Color(0xfff8f3d1),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/footballField.png'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 32.0),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xffdee0df),
                                border:
                                    Border.all(color: Colors.white, width: 1),
                              ),
                              child: Image.asset(
                                'assets/images/saoPauloIcon.png',
                                width: 40,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 32.0),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xffdee0df),
                                border:
                                    Border.all(color: Colors.white, width: 1),
                              ),
                              child: Image.asset(
                                'assets/images/palmeirasIcon.png',
                                width: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: MatchCard(isComplete: true),
        ),
      ],
    );
  }
}
