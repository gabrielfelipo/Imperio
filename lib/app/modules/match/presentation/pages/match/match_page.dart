import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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

class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  final controller = Modular.get<MatchController>();

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
                      onPressed: controller.previous,
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
