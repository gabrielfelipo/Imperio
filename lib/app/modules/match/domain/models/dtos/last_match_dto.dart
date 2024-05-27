class LastMatchDto {
  final String date;
  final int teamAWon;
  final int teamBWon;
  final int draw;
  final String championshipName;
  final String championshipImage;
  final String id;
  final String matchId;

  LastMatchDto({
    required this.date,
    required this.teamAWon,
    required this.teamBWon,
    required this.draw,
    required this.championshipName,
    required this.championshipImage,
    required this.id,
    required this.matchId,
  });

  factory LastMatchDto.fromMap(Map<String, dynamic> map) {
    return LastMatchDto(
      date: map['date'],
      teamAWon: map['team_a_won'],
      teamBWon: map['team_b_won'],
      draw: map['draw'],
      championshipName: map['championship_name'],
      championshipImage: map['championshio_image'],
      id: map['id'],
      matchId: map['matchId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'team_a_won': teamAWon,
      'team_b_won': teamBWon,
      'draw': draw,
      'championship_name': championshipName,
      'championshio_image': championshipImage,
      'id': id,
      'matchId': matchId,
    };
  }
}
