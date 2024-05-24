import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imperio/core/components/primary_button.view.dart';
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
                            return Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: CampeonatoCard(),
                            );
                          case 1:
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: NbaCard(),
                            );
                          case 2:
                            return Padding(
                              padding: const EdgeInsets.only(right: 24.0),
                              child: LeagueCard(),
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
                                width: 80,
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
                        child: MatchCard(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: MatchCard(),
                      ),
                    ],
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

// class MatchCard extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return Container();
//   }
// }

class MatchCard extends StatefulWidget {
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
      // height: 394,
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
                style: const TextStyle(
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
        ],
      ),
    );
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
  @override
  Widget build(BuildContext context) {
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
  }
}

class NbaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  }
}

class LeagueCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
