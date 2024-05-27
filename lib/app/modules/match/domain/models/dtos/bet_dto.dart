class BetDto {
  final String date;
  final String name;
  final String avatar;
  final double betScore;
  final String stat;
  final String id;
  final String matchId;

  BetDto({
    required this.date,
    required this.name,
    required this.avatar,
    required this.betScore,
    required this.stat,
    required this.id,
    required this.matchId,
  });

  factory BetDto.fromMap(Map<String, dynamic> map) {
    return BetDto(
      date: map['date'],
      name: map['name'],
      avatar: map['avatar'],
      betScore: map['bet_score'].toDouble(),
      stat: map['stat'],
      id: map['id'],
      matchId: map['matchId'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'name': name,
      'avatar': avatar,
      'bet_score': betScore,
      'stat': stat,
      'id': id,
      'matchId': matchId,
    };
  }
}
