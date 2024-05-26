import 'package:flutter/material.dart';
import 'package:imperio/core/components/battor_house.view.dart';
import 'package:imperio/core/components/best_odd_card.view.dart';
import 'package:imperio/core/components/other_odds.view.dart';
import 'package:imperio/core/components/primary_button.view.dart';
import 'package:imperio/core/structures/Pair.dart';

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
