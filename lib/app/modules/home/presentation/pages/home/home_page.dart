import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/presentation/enums/league_type.card.dart';
import 'package:imperio/app/modules/home/presentation/pages/home/home_controller.dart';
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
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Championship(
                                  icon: Image.asset(
                                'assets/images/championsLeagueIcon.png',
                                cacheHeight: 45,
                                cacheWidth: 45,
                              )),
                            );
                          case 1:
                            return Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Championship(
                                  icon: Image.asset(
                                'assets/images/uefaIcon.png',
                                cacheHeight: 49,
                                cacheWidth: 34,
                              )),
                            );
                          case 2:
                            return Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Championship(
                                  icon: Image.asset(
                                'assets/images/serieAIcon.png',
                                cacheHeight: 52,
                                cacheWidth: 44,
                              )),
                            );
                          case 3:
                            return Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Championship(
                                  icon: Image.asset(
                                'assets/images/laLigaIcon.png',
                                cacheHeight: 52,
                                cacheWidth: 52,
                              )),
                            );
                          default:
                            return Padding(
                              padding:
                                  const EdgeInsets.only(right: 16.0, left: 12),
                              child: Championship(
                                icon: Image.asset(
                                  'assets/images/laLigaIcon.png',
                                  cacheHeight: 52,
                                  cacheWidth: 52,
                                ),
                              ),
                            );
                        }
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
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: MatchCard(
                          isComplete: false,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: MatchCard(
                          isComplete: false,
                        ),
                      ),
                    ],
                  ),
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
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 16.0, bottom: 16),
                              child: TipCard(
                                banner: Image.asset(
                                  'assets/images/tipsBanner1.png',
                                ),
                                title:
                                    'Apostas ao Vivo: Estratégias e Dicas para o Sucesso',
                                description:
                                    'Explore as melhores práticas Explore as melhores práticas Explore as melhores práticas',
                              ),
                            );
                          case 1:
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, bottom: 16),
                              child: TipCard(
                                banner: Image.asset(
                                  'assets/images/tipsBanner1.png',
                                ),
                                title:
                                    'Apostas ao Vivo: Estratégias e Dicas para o Sucesso',
                                description:
                                    'Explore as melhores práticas Explore as melhores práticas Explore as melhores práticas',
                              ),
                            );
                          case 2:
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, bottom: 16),
                              child: TipCard(
                                banner: Image.asset(
                                  'assets/images/tipsBanner1.png',
                                ),
                                title:
                                    'Apostas ao Vivo: Estratégias e Dicas para o Sucesso',
                                description:
                                    'Explore as melhores práticas Explore as melhores práticas Explore as melhores práticas',
                              ),
                            );
                          case 3:
                            return Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, left: 8.0, bottom: 16),
                              child: TipCard(
                                banner: Image.asset(
                                  'assets/images/tipsBanner1.png',
                                ),
                                title:
                                    'Apostas ao Vivo: Estratégias e Dicas para o Sucesso',
                                description:
                                    'Explore as melhores práticas Explore as melhores práticas Explore as melhores práticas',
                              ),
                            );
                          default:
                            return Container();
                        }
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
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: StakeBanner(
                          description:
                              'Exclusivo 10% de Retorno e 200% de Bônus de Boas-Vindas até R\$1000 em Crypto',
                          logoPath: 'assets/images/googleIcon.png',
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: StakeBanner(
                          description: 'Créditos de Aposta até R\$200 na hora!',
                          logoPath: 'assets/images/bet365Icon.png',
                        ),
                      ),
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
                  const HorizontalBetCardList(),
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
  const HorizontalBetCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 108,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(
            width: 8,
          ),
          BetCard(
            userName: 'João Felipe Miranda',
            betDescription: 'Mais de 2.6 Goals',
            matchDetails: 'BRA X ARG - Há 10 minutos',
            imageUrl: 'assets/images/mockupUserAvatar.png',
            betSource: 'bet365',
            betOdds: '1.44',
          ),
          BetCard(
            userName: 'Maria Silva',
            betDescription: 'Menos de 3.5 Goals',
            matchDetails: 'GER X FRA - Há 5 minutos',
            imageUrl: 'assets/images/mockupUserAvatar.png',
            betSource: 'bet365',
            betOdds: '1.50',
          ),
          BetCard(
            userName: 'Carlos Santos',
            betDescription: 'Ambos Marcam',
            matchDetails: 'ITA X ESP - Há 2 minutos',
            imageUrl: 'assets/images/mockupUserAvatar.png',
            betSource: 'bet365',
            betOdds: '1.75',
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
