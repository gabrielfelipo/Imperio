import 'package:flutter/material.dart';
import 'package:imperio/core/components/match_card.view.dart';

class MatchField extends StatelessWidget {
  final bool isComplete;
  final String id;
  final String teamA;
  final String teamB;
  final String date;
  final int teamAScore;
  final int teamBScore;
  final double xbetOddsAvg;
  final double betsafeOddsAvg;
  final double betssonOddsAvg;
  final int likesCount;
  final int starsCount;
  final int viewsCount;
  final int sharessCount;
  final String channels;
  final String stadium;
  final String referee;
  final String refereeAvatar;
  final String refereeStats;
  final String teamAImage;
  final String teamBImage;
  final double redCardMedia;
  final double yellowCardMedia;
  final String teamAStats;
  final String teamBStats;

  const MatchField({
    super.key,
    required this.isComplete,
    required this.id,
    required this.teamA,
    required this.teamB,
    required this.date,
    required this.teamAScore,
    required this.teamBScore,
    required this.xbetOddsAvg,
    required this.betsafeOddsAvg,
    required this.betssonOddsAvg,
    required this.likesCount,
    required this.starsCount,
    required this.viewsCount,
    required this.sharessCount,
    required this.channels,
    required this.stadium,
    required this.referee,
    required this.refereeAvatar,
    required this.refereeStats,
    required this.teamAImage,
    required this.teamBImage,
    required this.redCardMedia,
    required this.yellowCardMedia,
    required this.teamAStats,
    required this.teamBStats,
  });

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
          child: MatchCard(
            isComplete: isComplete,
            id: id,
            teamA: teamA,
            teamB: teamB,
            date: date,
            teamAScore: teamAScore,
            teamBScore: teamBScore,
            xbetOddsAvg: xbetOddsAvg,
            betsafeOddsAvg: betsafeOddsAvg,
            betssonOddsAvg: betssonOddsAvg,
            likesCount: likesCount,
            starsCount: starsCount,
            viewsCount: viewsCount,
            sharessCount: sharessCount,
            channels: channels,
            stadium: stadium,
            referee: referee,
            refereeAvatar: refereeAvatar,
            refereeStats: refereeStats,
            teamAImage: teamAImage,
            teamBImage: teamBImage,
            redCardMedia: redCardMedia,
            yellowCardMedia: yellowCardMedia,
            teamAStats: teamAStats,
            teamBStats: teamBStats,
          ),
        ),
      ],
    );
  }
}
