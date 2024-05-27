import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/won_bet.dart';
import 'package:imperio/app/modules/home/presentation/enums/league_type.card.dart';
import 'package:imperio/app/modules/home/presentation/pages/home/home_controller.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/bet_dto.dart';
import 'package:imperio/core/components/bet_card.view.dart';
import 'package:imperio/core/components/championship_card.view.dart';
import 'package:imperio/core/components/custom_bottom_navbar.view.dart';
import 'package:imperio/core/components/home_appbar.view.dart';
import 'package:imperio/core/components/match_card.view.dart';
import 'package:imperio/app/modules/home/presentation/pages/menu/menu.view.dart';
import 'package:imperio/core/components/popular_championship.view.dart';
import 'package:imperio/core/components/primary_button.view.dart';
import 'package:imperio/core/components/see_more.button.dart';
import 'package:imperio/core/components/stake_banner.view.dart';
import 'package:imperio/core/components/tip.view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();
  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await controller.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: isMenuOpen ? const MenuAppBar() : const HomeAppBar(),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xfffcf6cf), Color(0xffffffff)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 181,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return const Padding(
                              padding: EdgeInsets.only(left: 24.0),
                              child: CampeonatoCard(
                                leagueType: LeagueType.championshipFeatured,
                              ),
                            );
                          case 1:
                            return const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: CampeonatoCard(
                                leagueType: LeagueType.nba,
                              ),
                            );
                          case 2:
                            return const Padding(
                              padding: EdgeInsets.only(right: 24.0),
                              child: CampeonatoCard(
                                leagueType: LeagueType.redBullLeague,
                              ),
                            );
                          default:
                            return Container();
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text(
                      'Campeonatos Populares',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.championships.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Championship(
                            icon: Image.network(
                              controller.championships[index].image,
                              cacheHeight: 45,
                              cacheWidth: 45,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    height: 48,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return Padding(
                              padding: const EdgeInsets.only(left: 32.0),
                              child: ImperioButton(
                                text: 'Live',
                                height: 56,
                                width: 84,
                                textColor: Colors.white,
                                icon: Image.asset(
                                  'assets/images/liveIcon.png',
                                  height: 9,
                                  width: 9,
                                ),
                                distanceToBorder: 3,
                                model: ImperioButtonViewModel.primary,
                                onPressed: () {},
                                backgroundColor: Colors.black,
                              ),
                            );
                          case 1:
                            return Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: ImperioButton(
                                text: 'Hoje',
                                height: 56,
                                width: 80,
                                textColor: const Color(0xff282c2a),
                                borderWidth: 1.5,
                                model: ImperioButtonViewModel.secondary,
                                onPressed: () {},
                                backgroundColor: Colors.transparent,
                                borderColor: const Color(0xffefefef),
                              ),
                            );
                          case 4:
                            return Padding(
                              padding:
                                  const EdgeInsets.only(right: 32.0, left: 4),
                              child: ImperioButton(
                                text: '01/11',
                                height: 56,
                                width: 80,
                                textColor: const Color(0xff282c2a),
                                borderWidth: 1.5,
                                model: ImperioButtonViewModel.secondary,
                                onPressed: () {},
                                backgroundColor: Colors.transparent,
                                borderColor: const Color(0xffefefef),
                              ),
                            );
                          default:
                            return Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: ImperioButton(
                                text: '01/11',
                                height: 56,
                                width: 80,
                                textColor: const Color(0xff282c2a),
                                borderWidth: 1.5,
                                model: ImperioButtonViewModel.secondary,
                                onPressed: () {},
                                backgroundColor: Colors.transparent,
                                borderColor: const Color(0xffefefef),
                              ),
                            );
                        }
                      },
                    ),
                  ),
                  if (controller.matches.length > 0) ...[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: MatchCard(
                            id: controller.matches[0].id,
                            isComplete: false,
                            teamA: controller.matches[0].teamA,
                            teamB: controller.matches[0].teamB,
                            date: controller.matches[0].date,
                            teamAScore: controller.matches[0].teamAScore,
                            teamBScore: controller.matches[0].teamBScore,
                            xbetOddsAvg: controller.matches[0].xbetOddsAvg,
                            betsafeOddsAvg:
                                controller.matches[0].betsafeOddsAvg,
                            betssonOddsAvg:
                                controller.matches[0].betssonOddsAvg,
                            likesCount: controller.matches[0].likesCount,
                            starsCount: controller.matches[0].starsCount,
                            viewsCount: controller.matches[0].viewsCount,
                            sharessCount: controller.matches[0].sharesCount,
                            channels: controller.matches[0].channels,
                            stadium: controller.matches[0].stadium,
                            referee: controller.matches[0].referee,
                            refereeAvatar: controller.matches[0].refereeAvatar,
                            refereeStats: controller.matches[0].refereeStats,
                            teamAImage: controller.matches[0].teamAImage,
                            teamBImage: controller.matches[0].teamBImage,
                            redCardMedia: controller.matches[0].redCardMedia,
                            yellowCardMedia:
                                controller.matches[0].yellowCardMedia,
                            teamAStats: controller.matches[0].teamAStats,
                            teamBStats: controller.matches[0].teamBStats,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: MatchCard(
                            id: controller.matches[1].id,
                            isComplete: false,
                            teamA: controller.matches[1].teamA,
                            teamB: controller.matches[1].teamB,
                            date: controller.matches[1].date,
                            teamAScore: controller.matches[1].teamAScore,
                            teamBScore: controller.matches[1].teamBScore,
                            xbetOddsAvg: controller.matches[1].xbetOddsAvg,
                            betsafeOddsAvg:
                                controller.matches[1].betsafeOddsAvg,
                            betssonOddsAvg:
                                controller.matches[1].betssonOddsAvg,
                            likesCount: controller.matches[1].likesCount,
                            starsCount: controller.matches[1].starsCount,
                            viewsCount: controller.matches[1].viewsCount,
                            sharessCount: controller.matches[1].sharesCount,
                            channels: controller.matches[1].channels,
                            stadium: controller.matches[1].stadium,
                            referee: controller.matches[1].referee,
                            refereeAvatar: controller.matches[1].refereeAvatar,
                            refereeStats: controller.matches[1].refereeStats,
                            teamAImage: controller.matches[1].teamAImage,
                            teamBImage: controller.matches[1].teamBImage,
                            redCardMedia: controller.matches[1].redCardMedia,
                            yellowCardMedia:
                                controller.matches[1].yellowCardMedia,
                            teamAStats: controller.matches[1].teamAStats,
                            teamBStats: controller.matches[1].teamBStats,
                          ),
                        ),
                      ],
                    ),
                  ],
                  const SizedBox(
                    height: 12,
                  ),
                  RedirectionTextButton(
                    description: 'Acompanhe todas as partidas',
                    action: () {},
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Dicas',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Ver todas',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 316,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.tips.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              const EdgeInsets.only(left: 16.0, bottom: 16),
                          child: TipCard(
                            banner: Image.network(
                              controller.tips[index].image,
                            ),
                            title: controller.tips[index].title,
                            description: controller.tips[index].description,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Principais bônus de aposta',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  Column(
                    children: [
                      if (controller.bonus.length > 0) ...[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: StakeBanner(
                            description: controller.bonus[0].discount,
                            logoPath: controller.bonus[0].platform,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: StakeBanner(
                            description: controller.bonus[1].discount,
                            logoPath: controller.bonus[1].platform,
                          ),
                        ),
                      ]
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RedirectionTextButton(
                    description: 'Veja mais bônus disponíveis',
                    action: () {},
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 16, right: 16, bottom: 8),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/fireIcon.png',
                              height: 24,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Últimas apostas ganhas',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  HorizontalBetCardList(
                    wonBets: controller.wonBets,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Divider(
                    color: Color(0xffefefef),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/imperioLogo.png',
                      height: 36,
                      width: 143,
                    ),
                  ),
                  const SizedBox(
                    height: 160,
                  ),
                ],
              ),
            ),
            if (isMenuOpen) MenuView(),
            Positioned(
              left: 16,
              right: 16,
              bottom: 8,
              child: CustomBottomNavBar(
                onToggleMenu: toggleMenu,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalBetCardList extends StatelessWidget {
  const HorizontalBetCardList({super.key, this.wonBets, this.bets});

  final List<WonBetDto>? wonBets;
  final List<BetDto>? bets;

  @override
  Widget build(BuildContext context) {
    String lastMinutes(String dateISO) {
      DateTime data = DateTime.parse(dateISO);

      DateTime now = DateTime.now();

      Duration difference = now.difference(data);
      int minutes = difference.inMinutes;

      return "$minutes minutos atrás";
    }

    if (wonBets != null) {
      return SizedBox(
        height: 108,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: wonBets!.length,
          itemBuilder: (context, index) {
            return BetCard(
              userName: wonBets![index].user,
              betDescription: 'Mais de 2.6 Goals',
              matchDetails: 'BRA X ARG - Há 10 minutos',
              imageUrl: wonBets![index].userAvatar,
              betSource: wonBets![index].platform,
              betOdds: (wonBets![index].score / 1000).toStringAsFixed(2),
            );
          },
        ),
      );
    } else {
      return SizedBox(
        height: 108,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bets!.length,
          itemBuilder: (context, index) {
            return BetCard(
              userName: bets![index].name,
              betDescription: bets![index].stat,
              matchDetails: lastMinutes(bets![index].date),
              imageUrl: bets![index].avatar,
              betSource: '1XBet',
              betOdds: (bets![index].betScore / 1000).toStringAsFixed(2),
            );
          },
        ),
      );
    }
  }
}
