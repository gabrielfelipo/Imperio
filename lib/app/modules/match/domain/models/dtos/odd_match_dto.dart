class OddsMatchDto {
  final String date;
  final double teamA1xbetOdd;
  final double teamABetsafeOdd;
  final double teamABetssonOdd;
  final double teamB1xbetOdd;
  final double teamBBetsafeOdd;
  final double teamBBetssonOdd;
  final double draw1xbetOdd;
  final double drawBetsafeOdd;
  final double drawBetssonOdd;
  final String id;
  final String matchId;

  OddsMatchDto({
    required this.date,
    required this.teamA1xbetOdd,
    required this.teamABetsafeOdd,
    required this.teamABetssonOdd,
    required this.teamB1xbetOdd,
    required this.teamBBetsafeOdd,
    required this.teamBBetssonOdd,
    required this.draw1xbetOdd,
    required this.drawBetsafeOdd,
    required this.drawBetssonOdd,
    required this.id,
    required this.matchId,
  });

  factory OddsMatchDto.fromMap(Map<String, dynamic> map) {
    return OddsMatchDto(
      date: map['data'],
      teamA1xbetOdd: map['team_a_1xbet_odd'].toDouble(),
      teamABetsafeOdd: map['team_a_betsafe_odd'].toDouble(),
      teamABetssonOdd: map['team_a_betsson_odd'].toDouble(),
      teamB1xbetOdd: map['team_b_1xbet_odd'].toDouble(),
      teamBBetsafeOdd: map['team_b_betsafe_odd'].toDouble(),
      teamBBetssonOdd: map['team_b_betsson_odd'].toDouble(),
      draw1xbetOdd: map['draw_1xbet_odd'].toDouble(),
      drawBetsafeOdd: map['draw_betsafe_odd'].toDouble(),
      drawBetssonOdd: map['draw_betsson_odd'].toDouble(),
      id: map['id'],
      matchId: map['matchId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': date,
      'team_a_1xbet_odd': teamA1xbetOdd,
      'team_a_betsafe_odd': teamABetsafeOdd,
      'team_a_betsson_odd': teamABetssonOdd,
      'team_b_1xbet_odd': teamB1xbetOdd,
      'team_b_betsafe_odd': teamBBetsafeOdd,
      'team_b_betsson_odd': teamBBetssonOdd,
      'draw_1xbet_odd': draw1xbetOdd,
      'draw_betsafe_odd': drawBetsafeOdd,
      'draw_betsson_odd': drawBetssonOdd,
      'id': id,
      'matchId': matchId,
    };
  }
}
