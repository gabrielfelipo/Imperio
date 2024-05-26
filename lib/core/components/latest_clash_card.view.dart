import 'package:flutter/material.dart';
import 'package:imperio/core/Labels.dart';

class LatestClashesCard extends StatelessWidget {
  const LatestClashesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 48),
      height: 213,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LatestClashesTeam(
              name: 'São Paulo',
              imagePath: 'assets/images/saoPaulo.png',
              victories: '2'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '2',
                style:
                    imperioLabelStyle(24, FontWeight.w500, color: Colors.white),
              ),
              Text(
                'Empates',
                style:
                    imperioLabelStyle(12, FontWeight.w500, color: Colors.white),
              ),
            ],
          ),
          const LatestClashesTeam(
              name: 'Palmeiras',
              imagePath: 'assets/images/palmeiras.png',
              victories: '2')
        ],
      ),
    );
  }
}

class LatestClashesTeam extends StatelessWidget {
  const LatestClashesTeam(
      {super.key,
      required this.name,
      required this.imagePath,
      required this.victories});

  final String name;
  final String imagePath;
  final String victories;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: imperioLabelStyle(
            12,
            FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0, top: 8),
          child: Image.asset(
            imagePath,
            height: 37,
          ),
        ),
        Container(
          height: 13,
          width: 1,
          color: Colors.white,
        ),
        Text(
          victories,
          style: imperioLabelStyle(40, FontWeight.w500, color: Colors.white),
        ),
        Text(
          'Vitórias',
          style: imperioLabelStyle(
            12,
            FontWeight.w500,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
