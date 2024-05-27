import 'package:flutter/material.dart';
import 'package:imperio/core/components/facts.view.dart';
import 'package:imperio/core/Labels.dart';

class TeamFacts extends StatelessWidget {
  const TeamFacts(
      {super.key,
      required this.teamAFacts,
      required this.teamBFacts,
      required this.teamA,
      required this.teamAImage,
      required this.teamB,
      required this.teamBImage});

  final String teamAFacts;
  final String teamA;
  final String teamAImage;
  final String teamBFacts;
  final String teamB;
  final String teamBImage;

  @override
  Widget build(BuildContext context) {
    List<String> factsA = teamAFacts.split(".");
    List<String> factsB = teamBFacts.split(".");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 16),
          child: Text(
            'Fatos do time',
            style: titleLabel,
          ),
        ),
        SizedBox(
          height: 420,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  team: teamA,
                  teamImage: teamAImage,
                  items: factsA,
                  model: FactsViewModel.team,
                ),
              ),
              const SizedBox(width: 16),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  team: teamB,
                  teamImage: teamBImage,
                  items: factsB,
                  model: FactsViewModel.team,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
