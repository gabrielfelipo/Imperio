import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/presentation/enums/match_event.icon.dart';
import 'package:imperio/app/modules/home/presentation/enums/team.card.dart';
import 'package:imperio/app/modules/home/presentation/pages/home/home_controller.dart';
import 'package:imperio/core/Labels.dart';
import 'package:imperio/core/components/best_odd_card.view.dart';
import 'package:imperio/core/components/match_event.view.dart';
import 'package:imperio/core/components/match_progressbar.view.dart';

class MatchCard extends StatefulWidget {
  MatchCard({
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

  @override
  _MatchCardState createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  final homeController = Modular.get<HomeController>();
  late final bool isComplete;

  @override
  void initState() {
    super.initState();
    isComplete = widget.isComplete;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(36),
        border: Border.all(width: 1, color: const Color(0xffdee0df)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.18),
            spreadRadius: 3,
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      Image.network(
                        widget.teamAImage,
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.teamA,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 6,
                        ),
                        const Text(
                          'Ao vivo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            color: Color(0xff505854),
                          ),
                        ),
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(100)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xffdee0df)),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
                        child: Text(
                          "60'",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Column(
                    children: [
                      Image.network(
                        widget.teamBImage,
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.teamB,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          const SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                (widget.teamAScore / 10000).toStringAsFixed(0),
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                ':',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                (widget.teamBScore / 10000).toStringAsFixed(0),
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          if (isComplete)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                color: Color(0xffdee0df),
              ),
            ),
          const SizedBox(
            height: 13,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('0'),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        MatchProgressBar(),
                        Positioned(
                          left: 40,
                          child: MatchEvent(
                            team: TeamCard.b,
                            event: MatchEventIcon.yellowFlag,
                          ),
                        ),
                        Positioned(
                          left: 90,
                          child: MatchEvent(
                            team: TeamCard.a,
                            event: MatchEventIcon.redFlag,
                          ),
                        ),
                        Positioned(
                          left: 180,
                          child: MatchEvent(
                            team: TeamCard.a,
                            event: MatchEventIcon.goal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text('90'),
              ],
            ),
          ),
          if (!isComplete) ...[
            const SizedBox(
              height: 13,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: OddRow(
                    oddHouse: (widget.xbetOddsAvg / 10000).toStringAsFixed(1),
                    oddDraw: (widget.betsafeOddsAvg / 10000).toStringAsFixed(1),
                    oddOutside:
                        (widget.betssonOddsAvg / 10000).toStringAsFixed(1))),
          ],
          const SizedBox(
            height: 13,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: Color(0xffdee0df),
            ),
          ),
          if (isComplete) ...[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText(
                    icon: Icons.thumb_up_alt_outlined,
                    text: '${(widget.likesCount / 10000).toStringAsFixed(1)} k',
                  ),
                  IconText(
                    icon: Icons.star_rate_rounded,
                    text: '${(widget.starsCount / 10000).toStringAsFixed(1)} k',
                  ),
                  IconText(
                    icon: Icons.ios_share_outlined,
                    text:
                        '${(widget.sharessCount / 10000).toStringAsFixed(1)} k',
                  ),
                  IconText(
                    icon: Icons.remove_red_eye_outlined,
                    text: '${(widget.viewsCount / 10000).toStringAsFixed(1)} k',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
          if (!isComplete)
            Padding(
              padding: EdgeInsets.only(top: 4, bottom: 24),
              child: TextButton(
                onPressed: () =>
                    homeController.toMatchModule(int.parse(widget.id)),
                child: const Text(
                  'Ver mais',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff505854)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  const IconText({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 16,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: imperioLabelStyle(12, FontWeight.w400),
          )
        ],
      ),
    );
  }
}
