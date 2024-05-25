import 'package:flutter/material.dart';
import 'package:imperio/app/modules/home/presentation/enums/match_event.icon.dart';
import 'package:imperio/app/modules/home/presentation/enums/team.card.dart';
import 'package:imperio/core/components/triangle_container.view.dart';

class MatchEvent extends StatelessWidget {
  final TeamCard team;
  final MatchEventIcon event;

  const MatchEvent({
    super.key,
    required this.team,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (team == TeamCard.a) ...[
          TriangleContainer(width: 6, height: 4, color: event.colorEvent),
          const SizedBox(
            height: 3,
          ),
        ],
        if (team == TeamCard.b)
          const SizedBox(
            height: 7,
          ),
        Container(
          height: 26,
          width: 26,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: const Color(0xffc0c4c2)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.5),
            child: Image.asset(
              event.assetPath,
            ),
          ),
        ),
        if (team == TeamCard.b) ...[
          const SizedBox(
            height: 3,
          ),
          Transform.rotate(
            angle: 3.14159,
            child:
                TriangleContainer(width: 6, height: 4, color: event.colorEvent),
          ),
        ],
        if (team == TeamCard.a)
          const SizedBox(
            height: 7,
          ),
      ],
    );
  }
}
