import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imperio/app/modules/home/presentation/pages/home/home_page.dart';
import 'package:imperio/core/components/battor_house.view.dart';
import 'package:imperio/core/components/best_odd_card.view.dart';
import 'package:imperio/core/components/facts.view.dart';
import 'package:imperio/core/components/match_card.view.dart';
import 'package:imperio/core/components/primary_button.view.dart';
import 'package:imperio/core/components/share_button.view.dart';
import 'match_controller.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
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
                      onPressed: () {},
                      backgroundColor: const Color(0xfff5d70a),
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
              Expanded(
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 32),
                      const MatchField(),
                      const SizedBox(height: 16),
                      const MatchInformations(),
                      const TeamFacts(),
                      const SizedBox(height: 24),
                      const RefereeFacts(),
                      const SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, bottom: 8),
                        child: Text(
                          'Últimas apostas ',
                          style: titleLabel,
                        ),
                      ),
                      const HorizontalBetCardList(),
                      const SizedBox(height: 32),
                      LatestClashes(screenSize: screenHeight / 3),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const BiggestOddsSheet(),
        ],
      ),
    );
  }
}

class BiggestOddsSheet extends StatefulWidget {
  const BiggestOddsSheet({super.key});

  @override
  _BiggestOddsSheetState createState() => _BiggestOddsSheetState();
}

class _BiggestOddsSheetState extends State<BiggestOddsSheet> {
  Color _backgroundColor = const Color(0xfff5d70a);
  bool _showContainer = false;
  bool _otherOdds = false;

  void otherOddsAction() {
    setState(
      () {
        _otherOdds = true;
      },
    );
  }

  void bestOddsAction() {
    setState(
      () {
        _otherOdds = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        final double proportion = notification.extent / notification.maxExtent;
        setState(() {
          _backgroundColor = proportion >= 0.97
              ? const Color(0xffdee0df)
              : const Color(0xfff5d70a);
          _showContainer = proportion >= 0.97;
          if (proportion < 0.97) {
            _otherOdds = false;
          }
        });
        return true;
      },
      child: DraggableScrollableSheet(
        initialChildSize: 0.26,
        minChildSize: 0.26,
        maxChildSize: 0.97,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: _backgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 16),
                        width: 53,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 24),
                          ImperioButton(
                            text: 'Odds mais altas',
                            textColor: _otherOdds ? Colors.black : Colors.white,
                            height: 47,
                            width: 133,
                            onPressed: () {
                              bestOddsAction();
                            },
                            backgroundColor:
                                _otherOdds ? Colors.transparent : Colors.black,
                            model: ImperioButtonViewModel.secondary,
                          ),
                          const SizedBox(width: 8),
                          ImperioButton(
                            text: 'Outras Odds',
                            textColor: _otherOdds ? Colors.white : Colors.black,
                            height: 47,
                            width: 110,
                            onPressed: () {
                              if (_showContainer) otherOddsAction();
                            },
                            backgroundColor:
                                _otherOdds ? Colors.black : Colors.transparent,
                            model: ImperioButtonViewModel.secondary,
                          ),
                        ],
                      ),
                      if (_showContainer)
                        const SizedBox(
                          height: 16,
                        ),
                      if (!_otherOdds)
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 0,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 0.0,
                            vertical: _showContainer ? 20 : 0,
                          ),
                          decoration: BoxDecoration(
                            color: _showContainer
                                ? const Color(0xffc0c4c2)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(36),
                          ),
                          child: const OddRow(),
                        ),
                      const SizedBox(
                        height: 4,
                      ),
                      if (_showContainer && !_otherOdds)
                        const BattorHouse()
                      else if (_showContainer && _otherOdds)
                        Column(
                          children: [
                            OtherOddsCard(
                              isSponsor: true,
                              betIconPath: 'assets/images/1xbetIcon.png',
                              pairList: [
                                Pair('Ambos times marcarão', 3.10),
                                Pair('São paulo marcará o primeiro gol', 2.61),
                                Pair('Mais de 4 Gols', 2.12),
                              ],
                            ),
                            OtherOddsCard(
                              isSponsor: false,
                              betIconPath: 'assets/images/betsafeIcon.png',
                              pairList: [
                                Pair('Ambos times marcarão', 2.10),
                                Pair('São paulo marcará o primeiro gol', 2.61),
                                Pair('Mais de 4 Gols', 3.12),
                              ],
                            ),
                            OtherOddsCard(
                              isSponsor: false,
                              betIconPath: 'assets/images/betssonIcon.png',
                              pairList: [
                                Pair('Ambos times marcarão', 3.10),
                                Pair('São paulo marcará o primeiro gol', 4.61),
                                Pair('Mais de 4 Gols', 2.12),
                              ],
                            ),
                          ],
                        )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Pair {
  final String key;
  final double value;

  Pair(this.key, this.value);
}

class OtherOddsCard extends StatelessWidget {
  const OtherOddsCard({
    super.key,
    required this.isSponsor,
    required this.betIconPath,
    required this.pairList,
  });

  final bool isSponsor;
  final String betIconPath;
  final List<Pair> pairList;

  @override
  Widget build(BuildContext context) {
    double highestOdd =
        pairList.map((pair) => pair.value).reduce((a, b) => a > b ? a : b);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xffc0c4c2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      betIconPath,
                      width: 87,
                    ),
                    if (isSponsor)
                      Text(
                        'Patrocinadora',
                        style: imperioLabelStyle(13, FontWeight.bold),
                      ),
                  ],
                ),
                ShareButton(),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ...pairList.asMap().entries.map((entry) {
            int index = entry.key;
            Pair pair = entry.value;
            bool isLast = index == pairList.length - 1;
            return Column(
              children: [
                OtherOddsRow(
                  title: pair.key,
                  odd: pair.value.toString(),
                  isBest: pair.value == highestOdd,
                ),
                if (!isLast)
                  Divider(
                    color: const Color(0xff898989).withOpacity(0.4),
                  ),
              ],
            );
          }).toList(),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class OtherOddsRow extends StatelessWidget {
  const OtherOddsRow(
      {super.key,
      required this.title,
      required this.odd,
      required this.isBest});

  final String title;
  final String odd;
  final bool isBest;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isBest)
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(60)),
                  child: Text(
                    'ODD MAIS ALTA',
                    style: imperioLabelStyle(10, FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              Text(
                title,
                style: subTitleLabel,
              ),
            ],
          ),
          Text(
            odd,
            style: titleLabel,
          ),
        ],
      ),
    );
  }
}

class LatestClashes extends StatelessWidget {
  const LatestClashes({super.key, required this.screenSize});
  final double screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 484 + screenSize,
      width: double.infinity,
      color: const Color(0xff646e69),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 32),
          Text(
            'Últimos confrontos',
            style: imperioLabelStyle(18, FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 24),
          const LatestClashesCard(),
          const SizedBox(height: 12),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 16),
                ChampionshipClashCard(
                  name: 'Brasileirão serie A',
                  championShipImagePath: 'assets/images/serieAIcon.png',
                  teamAImagePath: 'assets/images/saoPaulo.png',
                  teamBImagePath: 'assets/images/palmeiras.png',
                  teamAGoals: '2',
                  teamBGoals: '2',
                  date: '01/08/2023',
                ),
                SizedBox(width: 16),
                ChampionshipClashCard(
                  name: 'Libertadores',
                  championShipImagePath: 'assets/images/serieAIcon.png',
                  teamAImagePath: 'assets/images/saoPaulo.png',
                  teamBImagePath: 'assets/images/palmeiras.png',
                  teamAGoals: '1',
                  teamBGoals: '0',
                  date: '05/08/2023',
                ),
                SizedBox(width: 16),
                ChampionshipClashCard(
                  name: 'Champions League',
                  championShipImagePath: 'assets/images/serieAIcon.png',
                  teamAImagePath: 'assets/images/saoPaulo.png',
                  teamBImagePath: 'assets/images/palmeiras.png',
                  teamAGoals: '3',
                  teamBGoals: '1',
                  date: '10/08/2023',
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
          SizedBox(
            height: screenSize,
          )
        ],
      ),
    );
  }
}

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
              Image.asset(
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
                    '${teamAGoals} X $teamBGoals',
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

class RefereeFacts extends StatelessWidget {
  const RefereeFacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 16),
          child: Text(
            'Fatos do árbitro',
            style: titleLabel,
          ),
        ),
        SizedBox(
          height: 420,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              SizedBox(
                width: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  items: [
                    'Perdeu 6 jogos seguidos',
                    'Sequência de derrotas de 4 jogos em casa',
                    'Marcou apenas 1 gol nos últimos 4 jogos',
                    'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
                  ],
                  model: FactsViewModel.referee,
                ),
              ),
              SizedBox(width: 16),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  items: [
                    'Perdeu 6 jogos seguidos',
                    'Sequência de derrotas de 4 jogos em casa',
                    'Marcou apenas 1 gol nos últimos 4 jogos',
                    'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
                  ],
                  model: FactsViewModel.referee,
                ),
              ),
              SizedBox(width: 16),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  items: [
                    'Perdeu 6 jogos seguidos',
                    'Sequência de derrotas de 4 jogos em casa',
                    'Marcou apenas 1 gol nos últimos 4 jogos',
                    'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
                  ],
                  model: FactsViewModel.referee,
                ),
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TeamFacts extends StatelessWidget {
  const TeamFacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 16),
          child: Text(
            'Fatos do time',
            style: titleLabel,
          ),
        ),
        SizedBox(
          height: 420,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              SizedBox(
                width: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  items: [
                    'Perdeu 6 jogos seguidos',
                    'Sequência de derrotas de 4 jogos em casa',
                    'Marcou apenas 1 gol nos últimos 4 jogos',
                    'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
                    'Vencem o primeiro tempo em 16% de suas partidas',
                    'Marcam 75% dos seus gols no segundo tempo',
                  ],
                  model: FactsViewModel.team,
                ),
              ),
              SizedBox(width: 16),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  items: [
                    'Perdeu 6 jogos seguidos',
                    'Sequência de derrotas de 4 jogos em casa',
                    'Marcou apenas 1 gol nos últimos 4 jogos',
                    'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
                    'Vencem o primeiro tempo em 16% de suas partidas',
                    'Marcam 75% dos seus gols no segundo tempo',
                  ],
                  model: FactsViewModel.team,
                ),
              ),
              SizedBox(width: 16),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: FactsPlayer(
                  items: [
                    'Perdeu 6 jogos seguidos',
                    'Sequência de derrotas de 4 jogos em casa',
                    'Marcou apenas 1 gol nos últimos 4 jogos',
                    'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
                    'Vencem o primeiro tempo em 16% de suas partidas',
                    'Marcam 75% dos seus gols no segundo tempo',
                  ],
                  model: FactsViewModel.team,
                ),
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MatchField extends StatelessWidget {
  const MatchField({super.key});

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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: MatchCard(),
        ),
      ],
    );
  }
}

class MatchInformations extends StatelessWidget {
  const MatchInformations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Informações do jogo',
          style: titleLabel,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Premiere',
                      style: subTitleLabel,
                    ),
                    SizedBox(
                      width: 224,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/paramountIcon.png',
                                height: 32,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Paramount',
                                style: subTitleBoldLabel,
                              )
                            ],
                          ),
                          ShareButton(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Data',
                      style: subTitleLabel,
                    ),
                    Text(
                      '31/10/2023, 18:30',
                      style: subTitleBoldLabel,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Estágio',
                      style: subTitleLabel,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Morumbi - São Paulo',
                          style: subTitleBoldLabel,
                        ),
                        Row(
                          children: [
                            Text(
                              'Capacidade',
                              style: imperioLabelStyle(10, FontWeight.w400),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '73,501',
                              style: imperioLabelStyle(
                                12,
                                FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Árbitro',
                          style: subTitleLabel,
                        ),
                        Text(
                          'André Luiz\nSkettino Policarpo',
                          style: subTitleBoldLabel,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Média de cartões',
                          style: subTitleLabel,
                        ),
                        const Row(
                          children: [
                            CardCount(
                              color: Color(0xffde3b3b),
                              value: '0.65',
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CardCount(
                              color: Color(0xfff5d70a),
                              value: '1.32',
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Divider(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CardCount extends StatelessWidget {
  const CardCount({super.key, required this.color, this.value});

  final Color color;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: 73.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color.withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value ?? '0.0',
            style: subTitleBoldLabel,
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            width: 9.6,
            height: 14.4,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(1.2)),
          )
        ],
      ),
    );
  }
}

TextStyle titleLabel = const TextStyle(
    fontSize: 18, fontFamily: 'Montserrat', fontWeight: FontWeight.bold);

TextStyle subTitleLabel = imperioLabelStyle(12, FontWeight.w500);

TextStyle subTitleBoldLabel = imperioLabelStyle(14, FontWeight.bold);

enum LabelType {
  title,
  subtitle,
  subtitleBold,
}

TextStyle imperioLabelStyle(double size, FontWeight weight, {Color? color}) {
  return TextStyle(
      fontWeight: weight,
      fontSize: size,
      fontFamily: 'Montserrat',
      color: color ?? Colors.black);
}
