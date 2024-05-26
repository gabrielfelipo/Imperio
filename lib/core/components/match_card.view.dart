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
  MatchCard({super.key, required this.isComplete});
  final bool isComplete;

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
                      Image.asset(
                        'assets/images/saoPauloIcon.png',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'São Paulo',
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
                      Image.asset(
                        'assets/images/palmeirasIcon.png',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Palmeiras',
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
              const Text(
                '2',
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
              const Text(
                '2',
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: OddRow(),
            ),
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
                    text: '1.4 K',
                  ),
                  IconText(
                    icon: Icons.star_rate_rounded,
                    text: '1.4 K',
                  ),
                  IconText(
                    icon: Icons.ios_share_outlined,
                    text: '1.4 K',
                  ),
                  IconText(
                    icon: Icons.remove_red_eye_outlined,
                    text: '1.4 K',
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
                onPressed: homeController.toMatchModule,
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
      width: 71,
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
