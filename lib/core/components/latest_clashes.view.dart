import 'package:flutter/material.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/last_match_dto.dart';
import 'package:imperio/core/components/championship_clash_card.view.dart';
import 'package:imperio/core/components/latest_clash_card.view.dart';
import 'package:imperio/core/Labels.dart';

class LatestClashes extends StatelessWidget {
  const LatestClashes(
      {super.key, required this.screenSize, required this.lastMaches});
  final double screenSize;

  final List<LastMatchDto> lastMaches;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 484 + screenSize,
      width: double.infinity,
      color: const Color(0xff646e69),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 32),
          Text(
            'Últimos confrontos',
            style: imperioLabelStyle(18, FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 24),
          LatestClashesCard(
              teamAWon: lastMaches[0].teamAWon / 1000,
              teamBWon: lastMaches[0].teamBWon / 1000,
              draw: lastMaches[0].draw / 1000),
          const SizedBox(height: 12),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: lastMaches.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: ChampionshipClashCard(
                    name: lastMaches[index].championshipName,
                    teamAImagePath: 'assets/images/saoPaulo.png',
                    teamBImagePath: 'assets/images/palmeiras.png',
                    teamAGoals:
                        (lastMaches[index].teamAWon / 1000).toStringAsFixed(0),
                    teamBGoals:
                        (lastMaches[index].teamBWon / 1000).toStringAsFixed(0),
                    date: '',
                    championShipImagePath: lastMaches[index].championshipImage,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: screenSize,
          )
        ],
      ),
    );
  }
}
