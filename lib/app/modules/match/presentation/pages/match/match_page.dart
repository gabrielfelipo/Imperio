import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/presentation/enums/match_event.icon.dart';
import 'package:imperio/app/modules/home/presentation/pages/home/home_page.dart';
import 'package:imperio/app/modules/match/presentation/pages/match/match_controller.dart';
import 'package:imperio/core/Labels.dart';
import 'package:imperio/core/components/latest_clashes.view.dart';
import 'package:imperio/core/components/match_field.view.dart';
import 'package:imperio/core/components/match_informations.view.dart';
import 'package:imperio/core/components/odd_sheet.view.dart';
import 'package:imperio/core/components/primary_button.view.dart';
import 'package:imperio/core/components/referee_facts.view.dart';
import 'package:imperio/core/components/team_facts.view.dart';
import 'package:imperio/core/my_colors.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({super.key, required this.index});
  final int index;

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  final controller = Modular.get<MatchController>();

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await controller.getData(widget.index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final match = controller.match;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 16,
                  left: 16,
                ),
                child: Row(
                  children: [
                    ImperioButton(
                      height: 32,
                      width: 32,
                      onPressed: controller.previous,
                      backgroundColor: MyColors.mainYellow,
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      "Partida",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: Color(0xffefefef)),
              if (match != null)
                Expanded(
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 32),
                        MatchField(
                            isComplete: true,
                            id: match.id,
                            teamA: match.teamA,
                            teamB: match.teamB,
                            date: match.date,
                            teamAScore: match.teamAScore,
                            teamBScore: match.teamBScore,
                            xbetOddsAvg: match.xbetOddsAvg,
                            betsafeOddsAvg: match.betsafeOddsAvg,
                            betssonOddsAvg: match.betssonOddsAvg,
                            likesCount: match.likesCount,
                            starsCount: match.starsCount,
                            viewsCount: match.viewsCount,
                            sharessCount: match.sharesCount,
                            channels: match.channels,
                            stadium: match.stadium,
                            referee: match.referee,
                            refereeAvatar: match.refereeAvatar,
                            refereeStats: match.refereeStats,
                            teamAImage: match.teamAImage,
                            teamBImage: match.teamBImage,
                            redCardMedia: match.redCardMedia,
                            yellowCardMedia: match.yellowCardMedia,
                            teamAStats: match.teamAStats,
                            teamBStats: match.teamBStats),
                        const SizedBox(height: 16),
                        MatchInformations(
                            channels: match.channels,
                            date: match.date,
                            stadium: match.stadium,
                            referee: match.referee,
                            yellowCardMedia: match.yellowCardMedia,
                            redCardMedia: match.redCardMedia),
                        TeamFacts(
                            teamA: match.teamA,
                            teamB: match.teamB,
                            teamAImage: match.teamAImage,
                            teamBImage: match.teamBImage,
                            teamAFacts: match.teamAStats,
                            teamBFacts: match.teamBStats),
                        const SizedBox(height: 24),
                        RefereeFacts(
                          facts: match.refereeStats,
                          name: match.referee,
                          image: match.refereeAvatar,
                        ),
                        const SizedBox(height: 32),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, bottom: 8),
                          child: Text(
                            'Últimas apostas ',
                            style: titleLabel,
                          ),
                        ),
                        HorizontalBetCardList(
                          bets: controller.bets,
                        ),
                        const SizedBox(height: 32),
                        LatestClashes(
                          screenSize: screenHeight / 3,
                          lastMaches: controller.lastMaches,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          BiggestOddsSheet(
            odds: controller.odds,
          ),
        ],
      ),
    );
  }
}
