import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:imperio/core/my_colors.dart';

enum MatchEventIcon {
  redFlag,
  yellowFlag,
  goal,
}

extension MatchEventIconExtension on MatchEventIcon {
  String get assetPath {
    switch (this) {
      case MatchEventIcon.goal:
        return 'assets/images/soccerBallIcon.png';
      case MatchEventIcon.yellowFlag:
        return 'assets/images/yellowCard.png';
      case MatchEventIcon.redFlag:
        return 'assets/images/redCard.png';
    }
  }

  Color get colorEvent {
    switch (this) {
      case MatchEventIcon.goal:
        return const Color(0xff646e69);
      case MatchEventIcon.yellowFlag:
        return MyColors.mainYellow;
      case MatchEventIcon.redFlag:
        return const Color(0xffde3b3b);
    }
  }
}
