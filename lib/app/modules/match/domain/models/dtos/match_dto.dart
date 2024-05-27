class MatchDto {
  MatchDto({
    required this.id,
    required this.date,
    required this.teamA,
    required this.teamB,
    required this.teamAScore,
    required this.teamBScore,
    required this.xbetOddsAvg,
    required this.betsafeOddsAvg,
    required this.betssonOddsAvg,
    required this.likesCount,
    required this.starsCount,
    required this.viewsCount,
    required this.sharesCount,
    required this.channels,
    required this.stadium,
    required this.referee,
    required this.refereeAvatar,
    required this.refereeStats,
    required this.teamAImage,
    required this.teamBImage,
    required this.redCardMedia,
    required this.yellowCardMedia,
    required this.teamAStats,
    required this.teamBStats,
  });

  final String id;
  final String date;
  final String teamA;
  final String teamB;
  final int teamAScore;
  final int teamBScore;
  final double xbetOddsAvg;
  final double betsafeOddsAvg;
  final double betssonOddsAvg;
  final int likesCount;
  final int starsCount;
  final int viewsCount;
  final int sharesCount;
  final String channels;
  final String stadium;
  final String referee;
  final String refereeAvatar;
  final String refereeStats;
  final String teamAImage;
  final String teamBImage;
  final double redCardMedia;
  final double yellowCardMedia;
  final String teamAStats;
  final String teamBStats;

  factory MatchDto.fromMap(Map<String, dynamic> map) {
    return MatchDto(
      id: map['id'],
      date: map['date'],
      teamA: map['team_a'],
      teamB: map['team_b'],
      teamAScore: map['team_a_score'],
      teamBScore: map['team_b_score'],
      xbetOddsAvg: map['1xbet_odds_avg'].toDouble(),
      betsafeOddsAvg: map['betsafe_odds_avg'].toDouble(),
      betssonOddsAvg: map['betsson_odds_avg'].toDouble(),
      likesCount: map['likes_count'],
      starsCount: map['stars_count'],
      viewsCount: map['views_count'],
      sharesCount: map['shares_count'],
      channels: map['channels'],
      stadium: map['stadium'],
      referee: map['referee'],
      refereeAvatar: map['referee_avatar'],
      refereeStats: map['referee_stats'],
      teamAImage: map['team_a_image'],
      teamBImage: map['team_b_image'],
      redCardMedia: map['red_card_media'].toDouble(),
      yellowCardMedia: map['yellow_card_media'].toDouble(),
      teamAStats: map['team_a_stats'],
      teamBStats: map['team_b_stats'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'team_a': teamA,
      'team_b': teamB,
      'team_a_score': teamAScore,
      'team_b_score': teamBScore,
      '1xbet_odds_avg': xbetOddsAvg,
      'betsafe_odds_avg': betsafeOddsAvg,
      'betsson_odds_avg': betssonOddsAvg,
      'likes_count': likesCount,
      'stars_count': starsCount,
      'views_count': viewsCount,
      'shares_count': sharesCount,
      'channels': channels,
      'stadium': stadium,
      'referee': referee,
      'referee_avatar': refereeAvatar,
      'referee_stats': refereeStats,
      'team_a_image': teamAImage,
      'team_b_image': teamBImage,
      'red_card_media': redCardMedia,
      'yellow_card_media': yellowCardMedia,
      'team_a_stats': teamAStats,
      'team_b_stats': teamBStats,
    };
  }
}
