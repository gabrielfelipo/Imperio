import 'package:flutter/material.dart';
import 'package:imperio/app/modules/home/presentation/enums/league_type.card.dart';
import 'package:imperio/app/modules/home/presentation/enums/match_event.icon.dart';
import 'package:imperio/app/modules/home/presentation/enums/team.card.dart';
import 'package:imperio/core/components/primary_button.view.dart';
import 'package:imperio/core/components/triangle_container.view.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color(0xfff5d70a).withOpacity(0.21),
                const Color(0xffffffff).withOpacity(0)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 64,
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
                  const Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: MatchCard(),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: MatchCard(),
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
                  Divider(
                    color: Color(0xffefefef),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/imperioLogo.png',
                      height: 36,
                      width: 143,
                    ),
                  ),
                  SizedBox(
                    height: 160,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalBetCardList extends StatelessWidget {
  const HorizontalBetCardList({Key? key}) : super(key: key);

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

class BetCard extends StatelessWidget {
  final String userName;
  final String betDescription;
  final String matchDetails;
  final String imageUrl;
  final String betSource;
  final String betOdds;

  const BetCard({
    Key? key,
    required this.userName,
    required this.betDescription,
    required this.matchDetails,
    required this.imageUrl,
    required this.betSource,
    required this.betOdds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            child: ClipOval(
              child: Image.asset(
                imageUrl,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  betDescription,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  matchDetails,
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/bet365Icon.png',
                height: 40,
                width: 40,
              ),
              Text(
                betOdds,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RedirectionTextButton extends StatelessWidget {
  const RedirectionTextButton(
      {super.key, required this.description, required this.action});

  final String description;
  final void Function() action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          description,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff505854),
            fontFamily: 'Montserrat',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ImperioButton(
          height: 48,
          onPressed: action,
          backgroundColor: const Color(0xfff5d70a),
          icon: const Icon(
            Icons.arrow_forward,
            size: 26,
          ),
          width: 67,
        )
      ],
    );
  }
}

class StakeBanner extends StatelessWidget {
  const StakeBanner(
      {super.key, required this.description, required this.logoPath});
  final String description;
  final String logoPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xfff5f2d4).withOpacity(0.84),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Image.asset(
            logoPath,
            height: 40,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              description,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

class TipCard extends StatelessWidget {
  final String title;
  final String description;
  final Image banner;

  const TipCard(
      {super.key,
      required this.title,
      required this.description,
      required this.banner});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              child: banner),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 32),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 32, top: 8, bottom: 8),
                child: Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, bottom: 16, right: 16),
                child: Row(
                  children: [
                    SportKeyword(
                      title: 'Futebol',
                      icon: Image.asset(
                        'assets/images/soccerBallIcon.png',
                        height: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SportKeyword(
                      title: 'Basquete',
                      icon: Image.asset(
                        'assets/images/basketBallIcon.png',
                        height: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SportKeyword extends StatelessWidget {
  final String title;
  final Widget icon;

  const SportKeyword({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(100)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 10,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MatchCard extends StatefulWidget {
  const MatchCard({super.key});

  @override
  _MatchCardState createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  String _buttonText = "Press me";

  void _changeText() {
    setState(() {
      _buttonText = "You pressed me!";
    });
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
          const SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Casa',
                        style: TextStyle(
                            color: Color(0xff505854),
                            fontFamily: 'Montserrat',
                            fontSize: 10),
                      ),
                      SizedBox(
                        width: 60,
                        child: Image.asset(
                          'assets/images/1xbetIcon.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const Text(
                        '3.2',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 26,
                  color: const Color(0xffdee0df),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'X',
                      style: TextStyle(
                          color: Color(0xff505854),
                          fontFamily: 'Montserrat',
                          fontSize: 10),
                    ),
                    SizedBox(
                      width: 66,
                      child: Image.asset(
                        'assets/images/betsafeIcon.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const Text(
                      '2.6',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 26,
                  color: const Color(0xffdee0df),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Fora',
                        style: TextStyle(
                            color: Color(0xff505854),
                            fontFamily: 'Montserrat',
                            fontSize: 10),
                      ),
                      SizedBox(
                        width: 51,
                        child: Image.asset(
                          'assets/images/betssonIcon.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const Text(
                        '3.4',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: Color(0xffdee0df),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 4, bottom: 24),
            child: Text(
              'Ver mais',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff505854)),
            ),
          ),
        ],
      ),
    );
  }
}

class MatchEvent extends StatelessWidget {
  final TeamCard team;
  final MatchEventIcon event;

  const MatchEvent({
    super.key,
    required this.team,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (team == TeamCard.a) ...[
          TriangleContainer(width: 6, height: 4, color: event.colorEvent),
          const SizedBox(
            height: 3,
          ),
        ],
        if (team == TeamCard.b)
          const SizedBox(
            height: 7,
          ),
        Container(
          height: 26,
          width: 26,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: const Color(0xffc0c4c2)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.5),
            child: Image.asset(
              event.assetPath,
            ),
          ),
        ),
        if (team == TeamCard.b) ...[
          const SizedBox(
            height: 3,
          ),
          Transform.rotate(
            angle: 3.14159,
            child:
                TriangleContainer(width: 6, height: 4, color: event.colorEvent),
          ),
        ],
        if (team == TeamCard.a)
          const SizedBox(
            height: 7,
          ),
      ],
    );
  }
}

class MatchProgressBar extends StatefulWidget {
  const MatchProgressBar({super.key});

  @override
  _MatchProgressBarState createState() => _MatchProgressBarState();
}

class _MatchProgressBarState extends State<MatchProgressBar> {
  double widthFactor = 0.7;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Divider(
          height: 42,
          thickness: 4,
          color: Color(0xfff4f4f4),
        ),
        FractionallySizedBox(
          widthFactor: widthFactor,
          child: const Divider(
            height: 42,
            color: Color(0xfff5d70a),
            thickness: 4,
          ),
        ),
      ],
    );
  }

  void updateProgress(double newFactor) {
    setState(() {
      widthFactor = newFactor;
    });
  }
}

class DateToggle extends StatelessWidget {
  const DateToggle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.black,
      ),
      child: const Text(
        'Live',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class Championship extends StatelessWidget {
  final Image icon;

  const Championship({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color(0xffc4b23a).withOpacity(0.2)),
      child: icon,
    );
  }
}

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
              color: const Color(0xfff5d70a),
              borderRadius: BorderRadius.circular(36),
            ),
          ),
          Container(
            width: 270,
            height: 166,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color(0xfff5d70a).withOpacity(0.2),
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
