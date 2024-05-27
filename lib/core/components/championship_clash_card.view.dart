import 'package:flutter/material.dart';
import 'package:imperio/core/Labels.dart';

class ChampionshipClashCard extends StatelessWidget {
  const ChampionshipClashCard(
      {super.key,
      required this.name,
      required this.teamAImagePath,
      required this.teamBImagePath,
      required this.teamAGoals,
      required this.teamBGoals,
      required this.date,
      required this.championShipImagePath});

  final String name;
  final String championShipImagePath;
  final String teamAImagePath;
  final String teamBImagePath;
  final String teamAGoals;
  final String teamBGoals;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 264,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.11),
            offset: const Offset(0, 1),
            blurRadius: 6,
            spreadRadius: 4,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.only(top: 16, bottom: 27, left: 36, right: 36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                championShipImagePath,
                height: 24,
              ),
              const SizedBox(
                width: 4.5,
              ),
              Text(
                name,
                style: imperioLabelStyle(12, FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                teamAImagePath,
                height: 37.5,
              ),
              Column(
                children: [
                  Text(
                    '$teamAGoals X $teamBGoals',
                    style: titleLabel,
                  ),
                  Text(
                    date,
                    style: imperioLabelStyle(10, FontWeight.w400),
                  )
                ],
              ),
              Image.asset(
                teamBImagePath,
                height: 37.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
