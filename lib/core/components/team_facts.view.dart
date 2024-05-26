import 'package:flutter/material.dart';
import 'package:imperio/core/components/facts.view.dart';
import 'package:imperio/core/Labels.dart';

class TeamFacts extends StatelessWidget {
  const TeamFacts({super.key});

  @override
  Widget build(BuildContext context) {
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
            children: const [
              SizedBox(
                width: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  items: [
                    'Perdeu 6 jogos seguidos',
                    'Sequência de derrotas de 4 jogos em casa',
                    'Marcou apenas 1 gol nos últimos 4 jogos',
                    'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
                    'Vencem o primeiro tempo em 16% de suas partidas',
                    'Marcam 75% dos seus gols no segundo tempo',
                  ],
                  model: FactsViewModel.team,
                ),
              ),
              SizedBox(width: 16),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  items: [
                    'Perdeu 6 jogos seguidos',
                    'Sequência de derrotas de 4 jogos em casa',
                    'Marcou apenas 1 gol nos últimos 4 jogos',
                    'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
                    'Vencem o primeiro tempo em 16% de suas partidas',
                    'Marcam 75% dos seus gols no segundo tempo',
                  ],
                  model: FactsViewModel.team,
                ),
              ),
              SizedBox(width: 16),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  items: [
                    'Perdeu 6 jogos seguidos',
                    'Sequência de derrotas de 4 jogos em casa',
                    'Marcou apenas 1 gol nos últimos 4 jogos',
                    'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
                    'Vencem o primeiro tempo em 16% de suas partidas',
                    'Marcam 75% dos seus gols no segundo tempo',
                  ],
                  model: FactsViewModel.team,
                ),
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
