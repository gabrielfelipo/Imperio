import 'package:flutter/material.dart';
import 'package:imperio/core/components/championship_clash_card.view.dart';
import 'package:imperio/core/components/latest_clash_card.view.dart';
import 'package:imperio/core/Labels.dart';

class LatestClashes extends StatelessWidget {
  const LatestClashes({super.key, required this.screenSize});
  final double screenSize;

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
          const LatestClashesCard(),
          const SizedBox(height: 12),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 16),
                ChampionshipClashCard(
                  name: 'Brasileirão serie A',
                  championShipImagePath: 'assets/images/serieAIcon.png',
                  teamAImagePath: 'assets/images/saoPaulo.png',
                  teamBImagePath: 'assets/images/palmeiras.png',
                  teamAGoals: '2',
                  teamBGoals: '2',
                  date: '01/08/2023',
                ),
                SizedBox(width: 16),
                ChampionshipClashCard(
                  name: 'Libertadores',
                  championShipImagePath: 'assets/images/serieAIcon.png',
                  teamAImagePath: 'assets/images/saoPaulo.png',
                  teamBImagePath: 'assets/images/palmeiras.png',
                  teamAGoals: '1',
                  teamBGoals: '0',
                  date: '05/08/2023',
                ),
                SizedBox(width: 16),
                ChampionshipClashCard(
                  name: 'Champions League',
                  championShipImagePath: 'assets/images/serieAIcon.png',
                  teamAImagePath: 'assets/images/saoPaulo.png',
                  teamBImagePath: 'assets/images/palmeiras.png',
                  teamAGoals: '3',
                  teamBGoals: '1',
                  date: '10/08/2023',
                ),
                SizedBox(width: 16),
              ],
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
