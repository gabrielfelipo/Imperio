class WonBetDto {
  WonBetDto({
    required this.id,
    required this.user,
    required this.userAvatar,
    required this.platform,
    required this.score,
  });

  final String id;
  final String user;
  final String userAvatar;
  final String platform;
  final double score;

  factory WonBetDto.fromMap(Map<String, dynamic> map) => WonBetDto(
        id: map['id'],
        user: map['user'],
        userAvatar: map['user_avatar'],
        platform: map['platform'],
        score: map['score'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'user': user,
        'user_avatar': userAvatar,
        'platform': platform,
        'score': score,
      };
}
