import 'package:flutter/material.dart';
import 'package:imperio/app/modules/home/presentation/enums/league_type.card.dart';
import 'package:imperio/core/my_colors.dart';

class CampeonatoCard extends StatelessWidget {
  const CampeonatoCard({super.key, required this.leagueType});
  final LeagueType leagueType;

  @override
  Widget build(BuildContext context) {
    if (leagueType == LeagueType.championshipFeatured) {
      return Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: 270,
            height: 166,
            decoration: BoxDecoration(
              color: MyColors.mainYellow,
              borderRadius: BorderRadius.circular(36),
            ),
          ),
          Container(
            width: 270,
            height: 166,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                MyColors.mainYellow.withOpacity(0.2),
                const Color(0xff594e00).withOpacity(0.2)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(36),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 21, top: 33),
              child: Text(
                'Campeonatos\npopulares',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/playerHome.png',
              width: 191,
              height: 181,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      );
    } else if (leagueType == LeagueType.nba) {
      return Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            width: 270,
            height: 166,
            decoration: BoxDecoration(
              color: const Color(0xffc0c4c2),
              borderRadius: BorderRadius.circular(36),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 21, top: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'NBA',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'National Basketball\nAssociation',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/nbaCardPlayer.png',
              width: 191,
              height: 181,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      );
    } else {
      return Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            width: 270,
            height: 166,
            decoration: BoxDecoration(
              color: const Color(0xffc4b23a).withOpacity(0.2),
              borderRadius: BorderRadius.circular(36),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 21, top: 33),
              child: Text(
                'League\nof its Own',
                style: TextStyle(
                  height: 1.1,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            right: -70,
            bottom: 0,
            child: Image.asset(
              'assets/images/leagueCard.png',
              width: 230,
              height: 180,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      );
    }
  }
}
