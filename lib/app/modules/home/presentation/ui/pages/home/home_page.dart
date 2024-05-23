import 'dart:io';
import 'package:flutter/material.dart';
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
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Championship(),
                            );
                          case 4:
                            return Padding(
                              padding:
                                  const EdgeInsets.only(right: 24.0, left: 12),
                              child: Championship(),
                            );
                          default:
                            return Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Championship(),
                            );
                        }
                      },
                    ),
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

class Championship extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Color(0xffc4b23a).withOpacity(0.2)),
      child: Image.asset(
        'assets/images/championsLeagueIcon.png',
        cacheHeight: 45,
        cacheWidth: 45,
      ),
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
            'assets/images/NbaCardPlayer.png',
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
