import 'package:flutter/material.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/odd_match_dto.dart';
import 'package:imperio/core/Labels.dart';

class BattorHouse extends StatelessWidget {
  const BattorHouse({
    super.key,
    required this.odds,
  });

  final OddsMatchDto odds;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 36),
        decoration: BoxDecoration(
          color: const Color(0xffc0c4c2),
          borderRadius: BorderRadius.circular(36),
        ),
        child: Column(
          children: [
            Text(
              "Casa apostadora",
              style: imperioLabelStyle(18, FontWeight.w700,
                  color: const Color(0xff000000)),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(right: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 204,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const TeamComponent(
                          imagePath: 'assets/images/saoPaulo.png',
                          name: 'São Paulo',
                        ),
                        Text(
                          "VS",
                          style: imperioLabelStyle(12, FontWeight.w600,
                              color: const Color(0xff505854)),
                        ),
                        const TeamComponent(
                          imagePath: 'assets/images/palmeiras.png',
                          name: 'Palmeiras',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BattorHouseLine(
              imagePath: 'assets/images/1xbetIcon.png',
              valuesBattorHouse: [
                ValueBattorHouse(
                    value: (odds.teamA1xbetOdd / 10000).toStringAsFixed(1),
                    isBlack: true),
                ValueBattorHouse(
                    value: (odds.draw1xbetOdd / 10000).toStringAsFixed(1),
                    isBlack: false),
                ValueBattorHouse(
                    value: (odds.teamB1xbetOdd / 10000).toStringAsFixed(1),
                    isBlack: false),
              ],
            ),
            BattorHouseLine(
              imagePath: 'assets/images/betsafeIcon.png',
              valuesBattorHouse: [
                ValueBattorHouse(
                    value: (odds.teamABetsafeOdd / 10000).toStringAsFixed(1),
                    isBlack: false),
                ValueBattorHouse(
                    value: (odds.drawBetsafeOdd / 10000).toStringAsFixed(1),
                    isBlack: true),
                ValueBattorHouse(
                    value: (odds.teamBBetsafeOdd / 10000).toStringAsFixed(1),
                    isBlack: false),
              ],
            ),
            BattorHouseLine(
              imagePath: 'assets/images/betssonIcon.png',
              valuesBattorHouse: [
                ValueBattorHouse(
                    value: (odds.teamABetssonOdd / 10000).toStringAsFixed(1),
                    isBlack: false),
                ValueBattorHouse(
                    value: (odds.drawBetssonOdd / 10000).toStringAsFixed(1),
                    isBlack: false),
                ValueBattorHouse(
                    value: (odds.teamBBetssonOdd / 10000).toStringAsFixed(1),
                    isBlack: true),
              ],
            ),
          ],
        ));
  }
}

class BattorHouseLine extends StatelessWidget {
  const BattorHouseLine(
      {super.key, required this.imagePath, required this.valuesBattorHouse});
  final String imagePath;
  final List<ValueBattorHouse> valuesBattorHouse;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imagePath,
            width: 74,
            height: 17,
            fit: BoxFit.fitWidth,
          ),
          Row(
            children: valuesBattorHouse,
          )
        ],
      ),
    );
  }
}

class ValueBattorHouse extends StatelessWidget {
  const ValueBattorHouse(
      {super.key, required this.value, required this.isBlack});
  final String value;
  final bool isBlack;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 32,
        decoration: BoxDecoration(
          color: isBlack ? const Color(0xff000000) : Colors.transparent,
          borderRadius: BorderRadius.circular(149),
          border: Border.all(color: const Color(0xff646e69), width: 1),
        ),
        margin: const EdgeInsets.only(left: 13.31, top: 13.31),
        child: Center(
          child: Text(
            value,
            style: imperioLabelStyle(
                13.31, isBlack ? FontWeight.w700 : FontWeight.w500,
                color: isBlack
                    ? const Color(0xfffdfdfd)
                    : const Color(0xff000000)),
          ),
        ));
  }
}

class TeamComponent extends StatelessWidget {
  const TeamComponent({super.key, required this.imagePath, required this.name});
  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59,
      height: 59,
      padding: const EdgeInsets.only(bottom: 9),
      child: Column(
        children: [
          Text(
            name,
            style: imperioLabelStyle(10, FontWeight.w700,
                color: const Color(0xff000000)),
          ),
          Container(
            height: 6,
          ),
          Image.asset(
            imagePath,
            width: 30,
            height: 30,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
